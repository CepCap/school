require 'rails_helper'

RSpec.describe Subject, type: :model do

  it { should respond_to(:journals) }
  it { should respond_to(:name) }
end
