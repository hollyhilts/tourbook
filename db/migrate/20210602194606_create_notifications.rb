class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.references :user, null: false, foreign_key: true
      t.references :notifiable, null: false, polymorphic: true, index: true

      t.timestamps
    end
  end
end
