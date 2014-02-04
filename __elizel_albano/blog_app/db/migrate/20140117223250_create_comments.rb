class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
