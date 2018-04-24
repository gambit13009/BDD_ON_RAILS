class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
	t.integer :parent_id
    t.text :body
    t.timestamps
    t.belongs_to :user, index: true
	t.belongs_to :link, index: true
    t.timestamps
    end
  end
end
