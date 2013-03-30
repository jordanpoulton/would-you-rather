class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.boolean :answer
      t.text :comment

      t.timestamps
    end
  end
end
