require "spec_helper"

describe Match do
  before do
    @user1 = Users.new("bob","123")
    @user2 = Users.new("john","abc")
  end

  it "should initialize with two user ids" do

    match1 = Match.new(@user1.id, @user2.id)
    expect(match1.user1).to eq (@user1.id)
  end

  it "should make a match with a unique id" do
    match1 = Match.new(@user1.id,@user2.id)
    expect(match1.m_id).to eq 4
  end



  it "a match should start with nil for match winner" do
    match1 = Match.new(@user1.id,@user2.id)
    expect(match1.wm_id).to eq nil
  end

  xit "start match should return winner user id, if user has won 3 rounds" do



  end


end
