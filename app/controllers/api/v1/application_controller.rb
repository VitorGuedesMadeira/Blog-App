class Api::V1::ApplicationController < ActionController::API
  respond_to :json

  def encode_token(payload)
    JWR.encode(payload, 'secret')
  end
end