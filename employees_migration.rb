class EmployeesMigration < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :department_id
      t.string :name
      t.string :email
      t.string :phone
      t.integer :salary
      t.text :review
    end
    create_table :departments do |t|
      t.string :name
    end
  end
end
# EmployeesMigration.migrate(:up)
