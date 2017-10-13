class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tagname
      t.timestamps null: false
    end

    add_index :tags, :tagname, unique: true
  end
end
