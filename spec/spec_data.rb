def user_data
  user = FactoryBot.create(:user)
end

def user_login
  user1 = FactoryBot.create(:user)
  visit root_path
  click_on "Login"
  fill_in "Username", with: user1.username
  fill_in "Password", with: user1.password
  click_on "Login"
end
