class ApiController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  include Wor::Paginate
  include Pundit

  rescue_from Errors::ExternalRecordNotFoundException, with: :external_record_not_found

  def external_record_not_found
    render json: { description: 'EXTERNAL_RECORD_NOT_FOUND',
                   message: 'record was not found in the external service' },
           status: :not_found
  end
end
