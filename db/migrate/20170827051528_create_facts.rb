class CreateFacts < ActiveRecord::Migration[5.0]
  def change
    create_table :facts do |t|
      t.date :date
      t.string :description
      t.string :src
      t.boolean :technical

      t.timestamps
    end
  end
end
