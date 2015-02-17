class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.belongs_to :user
      t.belongs_to :question
      t.belongs_to :option
      t.timestamps null: false
    end
  end
end
