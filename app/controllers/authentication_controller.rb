class AuthenticationController < ApplicationController
	skip_before_action :authenticate_request

	def login
		# byebug
		@user= User.find_by(email:params[:email],password:params[:password])

		if @user 
			token=jwt_encode(user_id: @user.id)
			render json: {token:token}, status:	:ok
		else
			render json: {error:'unauthorized'}, status: :unauthorized
		end
	end

end