require 'rails_helper'

RSpec.describe Group, type: :model do

  describe "associations" do
    it { should belong_to(:member) }
  end
end