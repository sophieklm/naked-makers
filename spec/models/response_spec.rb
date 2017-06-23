require 'rails_helper'

RSpec.describe Response, type: :model do

  it { should have_one(:location) }

end
