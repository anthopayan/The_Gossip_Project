class CreateMessageRecipientLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :message_recipient_links do |t|
      t.belongs_to :private_message, index: true
      t.references :recipient, index: true

      t.timestamps
    end
  end
end
