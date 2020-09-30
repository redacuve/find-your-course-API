require 'rails_helper'

RSpec.describe Tag, type: :model do
  it { should have_many(:tagged).dependent(:destroy) }

  it { should validate_presence_of(:title) }
end
