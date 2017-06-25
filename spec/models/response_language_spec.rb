require 'rails_helper'

RSpec.describe ResponseLanguage, type: :model do

  it { should belong_to(:response) }
  it { should belong_to(:language) }

end
