class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :userName
      t.float :creditBalance
      t.int :points
      t.string :status
      t.string :userId

      t.timestamps null: false
    end
  end
end

