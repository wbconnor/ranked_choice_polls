class CreatePolls < ActiveRecord::Migration[7.0]
  def change
    create_table :polls do |t|
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.boolean :requires_logged_in
      t.integer :max_selected_options
      t.string :password
      t.date :close_date

      t.timestamps
    end
  end
end
