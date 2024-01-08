module SpecData
  def user_data
    user = FactoryBot.create(:user)
  end

  def user_login
    user = FactoryBot.create(:user)
    journal = FactoryBot.create(:journal, user_id: user.id)
    visit root_path
    expect(page).to have_content("Login")
    click_on "Login"
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_on "Login"
  end

  def login(user)
    session[:user_id] = user.id
  end
end
