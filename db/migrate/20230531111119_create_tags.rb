class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.references :category, null: false, foreign_key: true
      t.references :fake_friend, null: false, foreign_key: true

      t.timestamps
    end
  end
end
