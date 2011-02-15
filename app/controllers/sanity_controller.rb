class SanityController < ApplicationController
  def page
  end
 
  def delayed_job 
    # use rake jobs:work to execute
    Dummy.send_later(:create!, {:my_field => params[:dummy]})
    redirect_to({ :action => 'page', 'msg' => "scheduled" })
  end 


end
