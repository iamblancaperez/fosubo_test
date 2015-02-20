class TheBigMigration < ActiveRecord::Migration
  def change
  	create_table :tests do |t|
      t.string :name
      t.timestamps             
    end
    create_table :steps do |t|
      t.integer :test_id
      t.integer :number
      t.timestamps             
    end
    create_table :questions do |t|
      t.string :sentence
      t.boolean :options
      t.integer :test_id
      t.timestamps             
    end
    create_table :answers do |t|
      t.string :value
      t.integer :question_id
      t.integer :user_id
      t.timestamps             
    end
  end
end
