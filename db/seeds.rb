emails = [
	'rodrigo.toledo@eadbox.com',
	'william.belchior@eadbox.com'
].each do |email|
	user = User.create(email: email, password: 'asdqwe123', password_confirmation: 'asdqwe123')
end