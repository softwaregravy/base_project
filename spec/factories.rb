Factory.define :dummy do  |dummy|
  dummy.my_field 'DUMMY' 
end                                                                                                                                                                                                                                                                         

Factory.define :person, :class => Dummy do  |person|
  person.my_field 'PERSON' 
end 

