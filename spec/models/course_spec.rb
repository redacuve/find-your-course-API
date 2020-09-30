require 'rails_helper'

RSpec.describe Course, type: :model do
  it { should have_many(:favoritors).dependent(:destroy) }
  it { should have_many(:raters).dependent(:destroy) }
  it { should have_many(:tags).dependent(:destroy) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:price) }
end
