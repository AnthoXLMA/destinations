class CreateLocals < ActiveRecord::Migration[7.0]
  def change
    create_table :locals do |t|
      t.string :company

      t.timestamps
    end
  end
end
