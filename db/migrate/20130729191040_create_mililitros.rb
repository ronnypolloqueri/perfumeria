class CreateMililitros < ActiveRecord::Migration
  def change
    create_table :mililitros do |t|
      t.string :descripcion

    end
  end
end
