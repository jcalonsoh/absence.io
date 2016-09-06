require 'spec_helper'

describe Absence do
  context 'Basics Methods' do
    it 'Has a version number' do
      expect(Absence::VERSION).not_to be nil
    end

    it 'Has valid connection' do
      expect(Absence::Authenticate.value).not_to be nil
    end
  end
  context 'Users' do
    it 'Get List of Users' do
      expect(Absence::Users.list_of_users).not_to be nil
    end
    it 'Print List of Users' do
      expect(Absence::Users.list_of_users).not_to be nil
    end
  end
end
