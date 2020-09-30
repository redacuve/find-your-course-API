require 'rails_helper'

RSpec.describe Rating, type: :model do
  it { should belong_to(:course) }
  it { should belong_to(:user) }

  it { should validate_presence_of(:course_id) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:rating) }
end
