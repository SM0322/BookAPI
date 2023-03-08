class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews, id: false do |t|
      t.timestamps
    end
  end
end
