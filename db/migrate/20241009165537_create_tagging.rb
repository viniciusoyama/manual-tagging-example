class CreateTagging < ActiveRecord::Migration[7.2]
  def change
    create_table :taggings do |t|
      t.string :taggable_type
      t.bigint :taggable_id
      t.bigint :tag_id
      t.timestamps
    end
  end
end
