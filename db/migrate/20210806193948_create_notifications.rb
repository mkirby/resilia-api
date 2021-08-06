class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.string :subject
      t.string :message
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
