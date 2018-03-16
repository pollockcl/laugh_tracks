RSpec.describe 'As an end-user' do
  describe 'when I visit' do
    describe '/comedians' do
      it 'displays names with ages' do
        Comedian.create(name: 'Darth Plagueis the Wise', age: 999)
        Comedian.create(name: 'Farquad', age: 30)

        visit '/comedians'

        expect(page).to have_content('Name')
        expect(page).to have_content('Age')
        expect(page).to have_content('Farquad')
        expect(page).to have_content('999')
      end

      it 'displays specials' do
        visit '/comedians'

        expect(page). to have_content('Specials')
        
      end
    end
  end
end