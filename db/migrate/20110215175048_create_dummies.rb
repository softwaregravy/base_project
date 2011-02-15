class CreateDummies < ActiveRecord::Migration
  def self.up
    create_table :dummies do |t|
      t.string :my_field

      t.timestamps
    end
  end

  def self.down
    drop_table :dummies
  end
end
