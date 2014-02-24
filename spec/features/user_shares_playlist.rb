require 'spec_helper'

describe "a user can share a playlist" do
    let(:creator) do 
     User.create!({
      email: "j@k.co",
      password: "jeff",
      password_confirmation: "jeff",
      first_name: "Jeff",
      last_name: "K",
      dob: Date.today,
      balance: 100.00
     }) 
    end
    let(:shared) do 
     User.create!({
      email: "c@k.co",
      password: "cory",
      password_confirmation: "cory",
      first_name: "Cory",
      last_name: "H",
      dob: Date.today,
      balance: 100.00
     }) 
    end
    let(:loner) do 
     User.create!({
      email: "b@k.co",
      password: "blair",
      password_confirmation: "blair",
      first_name: "Blair",
      last_name: "K",
      dob: Date.today,
      balance: 100.00
     }) 
    end
    let(:playlist) do
     Playlist.create!({
      title: "Workout",
      user: creator
      }) 
    end
  
  it "shares a playlist" do
    # Setup
    login(creator)
    
    # Workflow for feature
    visit playlist_path(playlist)
    click_link "Share Playlist"

    # Expectations
    
  end  


  def login(user)
    visit "/login"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in!"
  end
end