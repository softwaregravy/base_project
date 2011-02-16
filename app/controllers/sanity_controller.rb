#require 'create_dummy'
require 'jobs'

class SanityController < ApplicationController

  def page
  end
 
  def delayed_method_call
    # use rake jobs:work to execute
    Dummy.delay.create!({:my_field => params[:dummy]})
    redirect_to({ :action => 'page', 'msg' => "scheduled" })
  end 

  def delayed_job
    job = Jobs::CreateDummy.new(params[:dummy])
    # example of a delay
    # r =  Delayed::Job.enqueue(job, {:priority => 0, :run_at => 1.second.from_now})
    r =  Delayed::Job.enqueue job

    redirect_to({ :action => 'page', 'msg' => "scheduled" })
  end 
end

