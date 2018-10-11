class CreatePaths < ActiveRecord::Migration[5.2]
  def change
    create_table :paths do |t|
      t.text :path
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
