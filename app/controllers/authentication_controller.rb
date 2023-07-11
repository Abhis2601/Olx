class AuthenticationController < ApplicationController
	skip_before_action :authenticate_request

	def login
		email=params[:email]
		if email.present?
			@user= User.find_by(email:email)
			if @user.password == params[:password] 
				token=jwt_encode(user_id: @user.id)
				render json: {token:token}, status:	:ok
			else
				render json: {error:'unauthorized'}, status: :unauthorized
			end
		else
			render json:{message:"email can't be blank"},status: :unauthorized
		end
	end

end
