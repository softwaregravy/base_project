require 'spec_helper'

describe Dummy do
  context "when given valid parameters" do 
    before :each do 
      @valid_param = { :my_field => "String" }
    end 
    it "should create an object" do 
      expect {
        Dummy.create! @valid_param
      }.to change{Dummy.count}.by 1
    end 
  end 

  context "when using a factory" do 
    context "to create a dummy" do 
      it "should create a dummy" do 
        dummy = Factory.create(:dummy)
        dummy.my_field.should == 'DUMMY'
      end 
    end 
    context "to create a person" do 
      it "should create a person" do 
        person = Factory.create(:person)
        person.my_field.should == 'PERSON' 
      end 
    end 
  end
end 
