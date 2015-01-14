require 'spec_helper' 

describe "EmailParser" do
  describe '#parser' do
    let(:parser) {EmailParser.new}
    
    it 'is able to instantiate a new email parser' do
      begin
        expect(parser).to be_a EmailParser
      rescue 
        abort "You need to create an EmailParser class"
      end
    end

    it "parses comma separated emails" do
      emails = "avi@test.com, bob@test.com test@avi.com, test@bob.com"
      expect(parser.parse(emails)).to eq ["avi@test.com", "bob@test.com","test@avi.com", "test@bob.com"] 
    end
    
    it "parses space delimited emails" do
      emails = "avi@test.com bob@test.com"
      expect(parser.parse(emails)).to eq ["avi@test.com", "bob@test.com"]
    end

    it "parses ; separated emails" do
      emails = "avi@test.com; bob@test.com test@avi.com; test@bob.com"
      expect(parser.parse(emails)).to eq ["avi@test.com", "bob@test.com","test@avi.com", "test@bob.com"] 
    end

    it 'removes duplicate emails' do
      emails = "avi@test.com, avi@test.com"
      expect(parser.parse(emails)).to eq ["avi@test.com"]
    end
  end
end
