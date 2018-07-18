require "rails_helper"

RSpec.feature "Sign in in application" do
	before do
		create(:user)
	end
	scenario "Sign in with right credentials" do
		visit "/"
		expect(page).to have_content("Para continuar, efetue login ou registre-se.") 

		fill_in "user_email", with: "rodrigo.toledo@eadbox.com"
		fill_in "user_password", with: "asdqwe123"
		click_button "Acessar"

		expect(page).to have_content("Autenticação feita com sucesso!") 
		expect(page).to have_link("Dashboard") 
		expect(page).to have_link("Sair") 
		expect(page).not_to have_button("Acessar") 
	end

	scenario "Sign in with wrong credentials" do
		visit "/"
		fill_in "user_email", with: "anything@invalid.com"
		fill_in "user_password", with: "123123"
		click_button "Acessar"

		expect(page).to have_content("Email ou senha incorretos.") 
		expect(page).not_to have_link("Dashboard") 
		expect(page).to have_button("Acessar") 
	end
end