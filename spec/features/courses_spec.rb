require "rails_helper"

RSpec.feature "Sign in in application" do
	before do
		create(:user)
		school = create(:school)
		create(:course, school: school)
	end
	scenario "List of all courses" do
		visit "/"
		fill_in "user_email", with: "rodrigo.toledo@eadbox.com"
		fill_in "user_password", with: "asdqwe123"
		click_button "Acessar"
		click_link "Escolas"

		expect(page).to have_content("FIC") 
		expect(page).to have_content("rodrigo.toledo.dev@gmail.com") 
		expect(page).to have_content("A mais completa da internet") 
		expect(page).to have_content("medicina.edools.com") 
		expect(page).to have_content("20/07/2018") 
		expect(page).to have_content("1 curso(s)") 
	end
end