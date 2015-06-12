class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.belongs_to :tag # alternative: t.integer :tag_id
      t.belongs_to :article

      t.timestamps null: false
    end
  end
end
