class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :img_url, default: "https://static.pexels.com/photos/175981/pexels-photo-175981.jpeg"
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :zipcode

      t.timestamps
    end
  end
end
