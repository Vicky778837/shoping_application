module Users
  extend self

  def user_send(user)
    @user = user
    user_data = {
     "firstName" => @userfname,
     "LastName" => @user.lname,
     "Phone" => @user.phone,
     "Address" => @user.address,
     "DOB" => @user.dob,
     "Role" => @user.role
    }
    @users_data = user_data.to_json
  end

  def zip_send(user)
     @users_data = user_send(user)
     byebug
     response = HTTParty.post("https://hooks.zapier.com/hooks/catch/12114300/ba9f02q/",headers: { 'Content-Type' => "application/json"}, body:  @users_data ).response
        if (response.code == "200")
          puts "hello"
         end
  end
end