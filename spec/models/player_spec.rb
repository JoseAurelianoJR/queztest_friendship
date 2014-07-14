require 'rails_helper'

RSpec.describe Player, :type => :model do
  it{ expect(subject).to_not be_valid }
end
