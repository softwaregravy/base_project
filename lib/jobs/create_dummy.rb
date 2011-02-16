module Jobs
  class CreateDummy < Struct.new(:value)
    def perform 
      Dummy.create!(:my_field => value) 
    end 
  end 
end 
