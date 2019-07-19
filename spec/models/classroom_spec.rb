require 'rails_helper'

RSpec.describe Classroom, type: :model do

  it { should respond_to(:students) }
  it { should respond_to(:teacher) }
  it { should respond_to(:grade) }
end
