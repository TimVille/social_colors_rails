require 'rails_helper'
require 'font-awesome-rails'

# Specs in this file have access to a helper object that includes
# the ApplicationHelper. For example:
#
# describe ApplicationHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
module SocialColorsRails
  RSpec.describe ApplicationHelper, type: :helper do

    it 'has access to the helper methods defined in the module' do
      expect(social_tag).to be(:available)
    end

  end
end
