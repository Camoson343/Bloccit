require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let (:sponsoredpost) {SponsoredPost.create!}

  describe "attributes" do
    it "should respond to title" do
      expect(sponsoredpost).to respond_to(:title)
    end

    it "should respond to copy" do
      expect(sponsoredpost).to respond_to(:copy)
    end

    it "should respond to price" do
      expect(sponsoredpost).to respond_to(:price)
    end
  end
end
