json.extract! voip, :id, :phone_choice, :first_name, :last_name, :email, :phone, :business_name, :number_phones, :street_address_1, :street_address_2, :city, :state, :zip, :best_time, :best_way, :also_interested, :created_at, :updated_at
json.url voip_url(voip, format: :json)
