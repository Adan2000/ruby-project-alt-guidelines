class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
        t.datetime :date 
        t.integer :user_id
        t.integer :trainer_id
    end
  end
end
