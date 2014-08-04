# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  teachers    :string(255)
#  gpa         :float
#  As          :float
#  Bs          :float
#  Cs          :float
#  Ds          :float
#  Fs          :float
#  created_at  :datetime
#  updated_at  :datetime
#

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
