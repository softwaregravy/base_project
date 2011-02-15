require 'simplecov'
  # SimpleCov http://bit.ly/gIK9Bd
  SimpleCov.start do 
    add_filter "spec"
    add_group "Models", "app/models" 
    add_group "Controllers", "app/controllers"
  end 
