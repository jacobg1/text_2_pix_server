class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :meme, index: true, foreign_key: true, null: false
      t.string :text

      t.timestamps
    end
  end
end
