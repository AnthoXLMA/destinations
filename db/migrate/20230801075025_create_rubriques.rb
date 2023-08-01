class CreateRubriques < ActiveRecord::Migration[7.0]
  def change
    create_table :rubriques do |t|
      t.string :chapter

      t.timestamps
    end
  end
end
