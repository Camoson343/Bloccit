require 'rails_helper'

RSpec.describe Question, type: :model do

  let(:question) { Question.create!(title: "string", body: "text", resolved: "boolean")}

  describe "attributes" do
    it "has title, body and resolved attributes" do
      expect(question).to have_attributes(title: "string", body: "text", resolved: "boolean")
    end
  end
end
