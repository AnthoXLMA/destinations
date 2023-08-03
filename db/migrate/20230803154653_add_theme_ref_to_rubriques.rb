class AddThemeRefToRubriques < ActiveRecord::Migration[7.0]
  def change
    add_reference :rubriques, :theme, null: false, foreign_key: true
  end
end
