class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
       req.params['client_id'] = '3UYDNCLEPB0RITUOJNT3BU5EE3G45CWKKA5URQQB2SEVMUHH'
       req.params['client_secret'] = 'MEXSOP4IUZVP0KRAMUBTPUAZVUXFT2WG5MJDFF3QBI1QH1PO'
       req.params['v'] = '20160201'
       req.params['near'] = params[:zipcode]
       req.params['query'] = 'coffee shop'
    end
   render 'search'
  end
end
