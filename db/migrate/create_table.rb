class CreateTable < ActiveRecord::Migration
  def change
    create_table :tables do |t|
    t.string :name
    t.string :tableId
    t.int :numPlayer
    t.int :tableMax
    serialize :userId
    t.float :minBet

    t.timestamps null: false
    end
  end
end