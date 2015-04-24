module ApplicationHelper
    def render_error(opts = {})
        opts[:status] ||= 422
        status = 422
        body = { message: opts[:body] || opts[:status] }.to_json
        render json: body, status: status
    end
end
