class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.references :province, foreign_key: true
      t.string :username
      t.string :password
      t.string :email_address
      t.text :mailing_address
      t.boolean :is_admin

      t.timestamps
    end
  end
end
