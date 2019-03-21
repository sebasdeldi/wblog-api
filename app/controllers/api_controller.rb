class ApiController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  include Wor::Paginate
end
