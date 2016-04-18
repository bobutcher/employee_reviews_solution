require 'active_record'
require_relative 'database'

class EmployeesAndDeparmentMigration < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :department_id
      t.string :name
      t.string :email
      t.string :phone
      t.integer :salary
      t.text :review
      t.boolean :satisfactory
    end
    create_table :departments do |t|
      t.string :name
      t.string :staff
      t.text :review
    end
  end
end

begin
  EmployeesAndDeparmentMigration.migrate(:down)
rescue

end
EmployeesAndDeparmentMigration.migrate(:up)
