
require 'birthday_list'

describe Birthdays do

  subject(:birthday) {described_class.new}

  it 'can create an instance of a birthday' do
    expect(birthday).to be_kind_of(Birthdays)
  end

  it 'can store birthdays' do
    expect(birthday.store('Kinnie', '6 November 1996')).to eq [{name: 'Kinnie', dob: '6 November 1996'}]
  end

  it 'displays list of birthdays' do
    birthday.store('Kinnie', '6 November 1996')
    birthday.store('Melon', '25 January 1996')
    
    expect{ birthday.display_list }.to output('Kinnie: 6 November 1996\nMelon: 25 January 1996\n').to_stdout
  end
end