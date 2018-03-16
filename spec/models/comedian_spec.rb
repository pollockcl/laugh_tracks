RSpec.describe 'As an end-user' do
  describe 'when I visit' do
    describe '/comedians' do
      it 'displays names with ages' do
        visit '/comedians'

        expect(page).to have_content('name')
        expect(page).to have_content('age')
      end
    end
  end
end