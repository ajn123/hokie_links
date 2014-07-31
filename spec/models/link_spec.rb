require 'rails_helper'

RSpec.describe Link, :type => :model do

  before do
    @link = Link.new(url: "http://www.railstutorial.org/book/modeling_users",name: "rails tut", description: "hi howard")
  end

  subject{ @link }

  it { should respond_to(:url)}
  it { should respond_to(:description)}
  it { should respond_to(:name)}

  it { should be_valid}

  describe "invalid url" do
    before { @link.url = " " }
    it { should_not be_valid }
  end

  describe "valid url" do
    before { @link.url = 'http://www.railstutorial.org/book/modeling_users'}
    it { should be_valid }
  end

  describe "invalid description" do
    before { @link.description = "" }
    it { should_not be_valid }
  end

end
