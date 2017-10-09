class CreateQuestionsTags < ActiveRecord::Migration
  def change
    create_table :questions_tags, id: false do |t|
      t.references :question, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true
    end
  end
end
