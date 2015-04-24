module ApplicationHelper
    def render_error(opts = {})
        opts[:status] ||= :unprocessable_entity
        status = error_responses[opts[:status].to_sym]
        body = { message: opts[:body] || opts[:status] }.to_json
        render json: body, status: status
    end

    def error_responses
        {
            not_found: 404,
            unprocessable_entity: 422
        }
    end
end
