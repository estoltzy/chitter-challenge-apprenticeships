feature 'Viewing peeps' do
  scenario 'user can view all peeps' do
    connection = PG.connect(dbname: 'chitter_test')

    Peeps.create(message: 'Test peep!', entry_date: "2021-03-18")
    Peeps.create(message: 'Second test peep!', entry_date: "2021-02-15")

    visit ('/peeps')

    expect(page).to have_content('Test peep!')
    expect(page).to have_content('Second test peep!')
  end
end