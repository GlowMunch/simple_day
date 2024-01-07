def user_data
  user2 = User.create!(username: "user2", password: "password2", password_confirmation: "password2")
end

def user_login
  visit root_path
  click_on "Login"
  fill_in "Username", with: "user2"
  fill_in "Password", with: "password2"
  click_on "Login"
end
