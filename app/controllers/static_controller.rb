class StaticController < ApplicationController

  def home
  end

  def test
    @provideroptions = Provider.all
  end

  def styles
  end

  def internet
  end

  def phones
  end

  def thankyou
  end

end
