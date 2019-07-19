require 'rails_helper'

RSpec.describe Journal, type: :model do

  it { should respond_to(:student) }
  it { should respond_to(:subject) }
  it { should respond_to(:marks) }

end
