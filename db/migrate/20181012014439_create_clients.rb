class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :nome
      t.boolean :capsula
      t.boolean :creme
      t.boolean :sache
      t.boolean :shampoo
      t.boolean :floral
      t.boolean :homeopatia

      t.timestamps
    end
  end
end
