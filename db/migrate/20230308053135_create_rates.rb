class CreateRates < ActiveRecord::Migration[6.1]
  def change
    create_table :rates, id: false do  |t|
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :book

      t.timestamps
    end
    add_foreign_key :rates, :books, column: :book_id , primary_key: :isbn
  end
end
