class CreateInformazionis < ActiveRecord::Migration[6.1]
  def change
    create_table :informazionis do |t|
      t.string :nome
      t.string :cognome
      t.string :email
      t.integer :telefono

      t.timestamps
    end
  end
end
