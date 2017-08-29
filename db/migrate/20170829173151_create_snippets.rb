class CreateSnippets < ActiveRecord::Migration[5.1]
  def change
    create_table :snippets do |t|
      t.string :question
      t.string :answer
    end
  end
end
