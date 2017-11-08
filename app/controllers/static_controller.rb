class StaticController < ApplicationController

  skip_before_action :authorize, only: [:home, :resellers, :thankyou]

  def home
  end

  def test
  end

  def thankyou
  end

  def admin
  end

end
