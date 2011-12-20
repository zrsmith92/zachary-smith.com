class CreatePortfolioItems < ActiveRecord::Migration
  def change
    create_table :portfolio_items do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
