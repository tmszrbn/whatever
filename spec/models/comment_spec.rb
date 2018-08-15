require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:movie) }
  it { should validate_uniqueness_of(:user_id).scoped_to(:movie_id) }
end
