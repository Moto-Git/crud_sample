class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      # 名前と年齢のテーブル
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
