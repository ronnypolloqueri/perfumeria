class CreatePerfumes < ActiveRecord::Migration
  def change
    create_table :perfumes do |t|
      t.string :nombre
      t.references :marca, index: true
      t.references :sexo, index: true
      t.references :tipo, index: true
      t.references :mililitro, index: true
      t.string     :imagen
      t.decimal :precio, :precision => 8 , :scale => 2

      t.timestamps
    end
  end
end
