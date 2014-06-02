class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name,              default: '',  null: false
      t.string :email,              default: '',  null: false
      t.string :crypted_password, default: '',  null: false
      t.string :salt,             default: '',  null: false
      t.string :nickname,              default: '',  null: false
      t.string :nickname_kana,              default: '',  null: false
      t.integer :auth,              default: 0,  null: false
      t.date :last_login
      t.boolean :premium_flg,              default: false,  null: false
      t.date :premium_limit
      t.text :profile
      t.boolean :temporary_flg,              default: false,  null: false

      t.string :token,             default: '',  null: false
      t.date :token_date

      t.text     :comment
      t.boolean  :enabled,            default: true,  null: false
      t.integer  :sort,               default: 0,     null: false
      t.integer  :created_user,       default: 0,     null: false
      t.integer  :updated_user,       default: 0,     null: false

      t.timestamps
    end
    add_index :users, :name
    add_index :users, :email, unique: true
    add_index :users, :token
    add_index :users, :enabled
    add_index :users, :sort
    add_index :users, :created_user
    add_index :users, :updated_user
    add_index :users, :created_at
    add_index :users, :updated_at
  end
end
