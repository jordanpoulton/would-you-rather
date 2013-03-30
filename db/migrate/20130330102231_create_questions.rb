class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :option_true
      t.string :option_false
      t.boolean :answer

      t.timestamps
    end
  end
end
