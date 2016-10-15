When (/^Eu for na página inicial$/) do
	visit root_path
end

Then (/^Eu devo ver uma mensagem de cumprimento$/) do
	expect(page).to have_content ("Welcome to InkFlow!")
end
