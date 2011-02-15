require 'spec_helper'

describe SanityController do

  describe "GET 'page'" do
    it "should be successful" do
      get 'page'
      response.should be_success
    end
  end

end
