class CreateTables < ActiveRecord::Migration
  def up
    create_table :browsers do |t|
      t.string :name
    end
    create_table :platforms do |t|
      t.string :name
    end
    create_table :instructions do |t|
      t.text :content
      t.references :browser
      t.references :platform
    end

  end
  def down
    drop_table :browsers
    drop_table :platforms
    drop_table :instructions
  end

end
