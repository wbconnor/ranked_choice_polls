class CreateRanks < ActiveRecord::Migration[7.0]
  def change
    create_table :ranks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :poll_option, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
