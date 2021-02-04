class CreatePrivateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :private_messages do |t|
      t.references :sender, index: true
      t.references :recipient, index: true
      t.timestamps
    end
  end
end
