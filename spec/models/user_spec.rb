require 'rails_helper'

describe User do
  it { should have_many :questions }

  it { should validate_presence_of :name }
  it { should validate_presence_of :email }

  it { should validate_uniqueness_of :email }
  it { should allow_value('user@example.com').for(:email) }
  it { should_not allow_value('user@example,com').for(:email) }
end
