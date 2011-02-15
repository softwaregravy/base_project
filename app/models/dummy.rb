# == Schema Information
# Schema version: 20110215175048
#
# Table name: dummies
#
#  id         :integer         not null, primary key
#  my_field   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Dummy < ActiveRecord::Base
end
