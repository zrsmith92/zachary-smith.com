class CreateContactEntries < ActiveRecord::Migration
  def change
    create_table :contact_entries do |t|
      t.string :name
      t.string :email
      t.string :company
      t.text :message

      t.timestamps
    end
  end
end
