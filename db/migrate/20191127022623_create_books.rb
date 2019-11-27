class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.date :publish_date
      t.decimal :list_price
      t.decimal :ssell_price
      t.integer :page_num
      t.string :isbn, uniqueness: true
      t.string :isbn13, uniqueness: true
      t.text :description
      t.text :about
      t.text :outline
      t.boolean :on_sell, default: 0

      t.timestamps
    end
  end
end
