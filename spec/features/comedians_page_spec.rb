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
        Comedian.create(name: 'Darth Plagueis the Wise', age: 999)
        Comedian.create(name: 'Farquad', age: 30)
        Special.create(name: 'spec1', comedian_id: 1)
        Special.create(name: 'spec2', comedian_id: 2)

        visit '/comedians'

        expect(page).to have_content('Specials')
        expect(page).to have_content('spec1')
        expect(page).to have_content('spec2')
      end

      it 'displays average comedian age' do
        Comedian.create(name: 'Darth Plagueis the Wise', age: 1000)
        Comedian.create(name: 'Farquad', age: 30)
        visit '/comedians'

        expect(page).to have_content('Average Age:')
        expect(page).to have_content('515')
      end
    end
  end
end