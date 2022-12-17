class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :account_number
      t.string :total_balance
      t.string :available_balance
      t.string :account_type

      t.timestamps
    end
  end
end
