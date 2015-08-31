class CreateTextos < ActiveRecord::Migration
  def change
    create_table :textos do |t|
      t.string :tex_titulo
      t.text :tex_texto
      t.references :post, index: true
      t.string :tex_imagen_tmp

      t.timestamps null: false
    end
    add_foreign_key :textos, :posts
  end
end
