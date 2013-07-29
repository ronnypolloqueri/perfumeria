class CreatePerfumes < ActiveRecord::Migration
  def change
    create_table :perfumes do |t|
      t.string :nombre
      t.references :tipo, index: true
      t.references :sexo, index: true
      t.decimal :precio, :precision => 8, :scale => 2
      t.references :mililitro, index: true
      t.string :imagen_url

      t.timestamps
    end
  end
end
