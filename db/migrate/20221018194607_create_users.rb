class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :photo, default: 'https://www.kindpng.com/picc/m/22-223965_no-profile-picture-icon-circle-member-icon-png.png'
      t.text :bio
      t.integer :posts_counter

      t.timestamps
    end
  end
end
