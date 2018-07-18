require "rails_helper"

RSpec.feature "Forgot password in application" do
	before do
		create(:user)
	end
	scenario "Request new password with success" do
		visit "/users/password/new"
		expect(page).to have_content("Esqueceu sua senha? Preencha com seu email abaixo.") 

		fill_in "user_email", with: "rodrigo.toledo@eadbox.com"
		click_button "Receber instruções para acesso"

		expect(page).to have_content("Dentro de minutos, você receberá um e-mail com instruções para a troca da sua senha.")
	end

	scenario "Request new password without success" do
		visit "/users/password/new"
		fill_in "user_email", with: "anything@invalid.com"
		click_button "Receber instruções para acesso"

		expect(page).to have_content("Credencial inválida ou não encontrada!")
	end
end