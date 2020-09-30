require 'rails_helper'

RSpec.describe CourseTag, type: :model do
  it { should belong_to(:course) }
  it { should belong_to(:tag) }

  it { should validate_presence_of(:course_id) }
  it { should validate_presence_of(:tag_id) }
end
