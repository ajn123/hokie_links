require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do


  describe "GET about" do
    it "returns http success" do
      get :about
      expect(response).to be_success
    end
  end

  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to be_success
    end
  end

  describe "GET updates" do
    it "returns http success" do
      get :updates
      expect(response).to be_success
    end
  end

end
