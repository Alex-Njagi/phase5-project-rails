class ApplicationController < ActionController::API
    before_action :authorized

    def encode_token (payload)
        JWT.encode(payload, 'th1s_1s_a_s3cr3t')
        # payload => { user_id: 1 }
    end

    def auth_header
        # { 'Authorization': 'Bearer <token>' }
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
          token = auth_header.split(' ')[1]
          pp token
          # headers: { 'Authorization': 'Bearer <token>' }
          begin
            JWT.decode(token, 'th1s_1s_a_s3cr3t', true, algorithm: 'HS256')
            # JWT.decode => [{ "user_id"=>1 }, { "alg"=>"HS256" }]
          rescue JWT::DecodeError
            nil
          end
        end
    end

    def current_user
        if decoded_token
          # decoded_token=> [{"user_id"=>1}, {"alg"=>"HS256"}]
          # or nil if we can't decode the token
          user_id = decoded_token[0]['user_id']
          @user = User.find_by(id: user_id)
        end
    end
    
    def logged_in?
    !!current_user
    end

    def authorized
        render json: { message: 'Oh No! Please log in!' }, status: :unauthorized unless logged_in?
    end
end
