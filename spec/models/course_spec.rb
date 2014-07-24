require 'rails_helper'

RSpec.describe Course, :type => :model do

  before do
    @course = Course.new(name: 'CS 2114', description: "intro to data structures and algorithms", gpa: 2.34)
  end

  subject { @course }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:gpa) }

  it { should be_valid }
end
