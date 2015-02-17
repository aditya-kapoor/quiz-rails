class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :value
      t.boolean :answer, default: false, null: false
      t.belongs_to :question
      t.timestamps null: false
    end
  end
end
