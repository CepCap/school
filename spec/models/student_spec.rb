require 'rails_helper'

RSpec.describe Student, type: :model do

  it { should respond_to(:teacher) }
  it { should respond_to(:classroom) }
  it { should respond_to(:journals) }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:gender) }

end
