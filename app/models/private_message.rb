class PrivateMessage < ApplicationRecord
    belongs_to :sender, class_name: "User"
    has_many :message_recipient_links
    has_many :recipients, through: :message_recipient_links, foreign_key: 'recipient_id', class_name: "MessageRecipientLink"
end
