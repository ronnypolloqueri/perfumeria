class CreateSexo < ActiveRecord::Migration
  def change
    create_table :sexo do |t|
      t.string :descripcion

    end
  end
end
