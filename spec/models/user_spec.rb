require 'rails_helper'

RSpec.describe User, type: :model do
  it "User should not be valid without valid attributes" do
    expect(User.new).to_not be_valid
  end

  it "User should not be valid without a name" do 
    person = User.new(name: nil)
    expect(person).to_not be_valid
  end

  it "post counter should not be valid without integer" do 
    person = User.new(post_counter: nil)
    expect(person).to_not be_valid
  end

  it "Most recent user returns only three posts" do
    person = User.most_recent_posts.length
    expect(person).to be <= 3
  end
end
