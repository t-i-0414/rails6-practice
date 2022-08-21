class CreateAdnimistrators < ActiveRecord::Migration[6.0]
  def change
    create_table :adnimistrators do |t|
      t.string :email, null: false #メールアドレス
      t.string :hashed_password #パスワード
      t.boolean :suspended, null: false, default: false #停止フラグ

      t.timestamps
    end

    add_index :adnimistrators, "LOWER(email)", unique: true
  end
end
