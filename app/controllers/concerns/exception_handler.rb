# See spec/concerns/response.rb for #json_response helper.
module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    # Raised when Active Record cannot find a record by given id or set of ids.
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response(
        {
          errors: [e.message]
        },
        :not_found
      )
    end

    # Raised by ActiveRecord::Base#save! and ActiveRecord::Base#create! when the record is invalid.
    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response(
        {
          errors: e.record.errors.full_messages
        },
        :unprocessable_entity
      )
    end
  end
end
