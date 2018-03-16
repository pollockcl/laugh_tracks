RSpec.describe 'When using CRUD' do
  describe 'I can' do
    it 'CREATE' do
      Comedian.create(name: 'Darth Plagueis the Wise', age: '999')

      expect(Comedian.all.size).to eq(1)
    end

    it 'not CREATE with missing attributes' do
      com1 = Comedian.create(name: 'error')
      com2 = Comedian.create(age: 80085)

      expect(com1).to_not be_valid
      expect(com2).to_not be_valid
    end

    it 'READ' do
      Comedian.create(name: 'Darth Plagueis the Wise', age: 999)

      expect(Comedian.find(1).name).to eq('Darth Plagueis the Wise')
      expect(Comedian.find(1).age).to eq(999)
    end

    it 'UPDATE' do
      Comedian.create(name: 'Darth Plagueis the Wise', age: 999)
      Comedian.update(1, name: 'Plagueis')

      expect(Comedian.find(1).name).to eq('Plagueis')
    end

    it 'DELETE' do
      Comedian.create(name: 'Darth Plagueis the Wise', age: 999)
      Comedian.delete(1)

      expect(Comedian.all.size).to eq(0)
    end
  end
end

describe 'class methods' do
  describe '.average age' do
    it 'gives an average age' do
      Comedian.create(name: 'Darth Plagueis the Wise', age: 1000)
      Comedian.create(name: 'Farquad', age: 30)

      expect(Comedian.average_age).to eq(515)
    end
  end
end