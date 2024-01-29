class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :message
      t.string :author
      t.references :post, null: false, foreign_key: true #post_id

      t.timestamps
    end
  end
end
