require 'rails_helper'

RSpec.describe Teacher, type: :model do

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }

  it { should respond_to(:classrooms) }
  it { should respond_to(:students) }


end
