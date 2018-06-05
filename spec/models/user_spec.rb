require 'rails_helper'
RSpec.describe User, type: :model do
  it "first test" do
    @user = create(:user)
    expect(@user).to be_valid
  end
  it "second test" do
    @user = create(:user)
    @user2= build(:user, email:'juandiaz@miuandes.cl')
    expect(@user2).to_not be_valid
  end
  it "third test" do
    @user = create(:user)
    @user2= build(:user, username:'Jose' )
    expect(@user2).to_not be_valid
  end
  it "fourth test" do
    @user = build(:user , username:'lkjhgfdsasdfghjklkjhf' )
    expect(@user).to_not be_valid
  end

end