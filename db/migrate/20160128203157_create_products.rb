class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price_in_cents

      t.timestamps null: false
    end
  end
end

#THE ABOVE IS THE RESULT OF THE FOLLOWING CL:
#$ rails g model user email:string password_digest:string
