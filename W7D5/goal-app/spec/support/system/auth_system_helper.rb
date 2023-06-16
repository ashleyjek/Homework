module AuthSystemHelper
    def register_as_ashley
      visit new_user_path
      fill_in 'Username:', with: 'ashley'
      fill_in 'Email:', with: 'ashley@email.com'
      fill_in 'Password:', with: 'password'
      click_button 'Sign Up' 
    end
  end