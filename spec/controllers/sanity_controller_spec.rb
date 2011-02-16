require 'spec_helper'

describe SanityController do
  render_views 

  describe "GET 'page'" do
    it "should be successful" do
      get 'page'
      response.should be_success
    end
  end
  
  shared_examples_for "something creating a delayed job" do |method|

    subject { post method, {:dummy => "string"} }
    it { should be_redirect} 

    it "should not create the dummy value synchornously" do 
      lambda { 
        post method, {:dummy => "string"} 
      }.should_not change(Dummy, :count)
    end 

    it "the asynchronous job should create a Dummy" do 
      post method, {:dummy => "string"} 
      lambda {
        Delayed::Worker.new.work_off
      }.should change(Dummy, :count).by 1
    end 
  end 

  describe "#delayed_method_call" do 
    it_should_behave_like "something creating a delayed job", 'delayed_method_call'
  end 

  describe "#delayed_job" do 
    it_should_behave_like "something creating a delayed job", 'delayed_job'
  end 
end
