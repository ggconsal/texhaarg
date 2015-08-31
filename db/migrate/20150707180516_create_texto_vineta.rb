class CreateTextoVineta < ActiveRecord::Migration
  def change
    create_table :texto_vineta do |t|
      t.text :tve_texto
      t.references :texto, index: true

      t.timestamps null: false
    end
    add_foreign_key :texto_vineta, :textos
  end
end
