require 'rails_helper'
RSpec.describe Message, type: :model do
  it "first test" do
    @user=create(:user)
    @message = create(:message, user_id:@user.id)
    expect(@message).to be_valid
  end
  it "second test" do
    @message = build(:message, user_id:nil )
    expect(@message).to_not be_valid
  end
  it "third test" do
    @message = build(:message, user_id:20)
    expect(@message).to_not be_valid
  end


end