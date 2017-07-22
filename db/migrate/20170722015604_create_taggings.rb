class CreateTaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :taggings do |t|
      t.string :tag
      t.references :tag, foreign_key: true
      t.string :article
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
