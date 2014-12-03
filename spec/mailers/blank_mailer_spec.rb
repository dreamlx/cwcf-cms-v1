require "spec_helper"

describe BlankMailer do
  describe "cofirm" do
    let(:mail) { BlankMailer.cofirm }

    it "renders the headers" do
      mail.subject.should eq("Cofirm")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
