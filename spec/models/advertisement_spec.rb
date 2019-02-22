require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) {Advertisement.create!(title:"Ad Title", copy: "Ad Copy" price: nil )}

  describe "attributes" do
    it "has title and body attributes" do
      expect(advertisement).to have_attributes(title: "Ad title", copy: "Ad Copy" price: nil )
    end
  end
end
