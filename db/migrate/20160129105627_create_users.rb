class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end

#THE ABOVE IS THE RESULT OF RUNNING:
#$ rails g model user email:string password_digest:string
