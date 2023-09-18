class Message < ApplicationRecord
  include ActionView::RecordIdentifier

  default_scope { order(created_at: :asc) }

  enum role: { system: 0, assistant: 10, user: 20 }

  belongs_to :chat

  after_create_commit -> { broadcast_created }
  after_update_commit -> { broadcast_updated }

  def broadcast_created
    broadcast_append_later_to(
      "#{dom_id(chat)}_messages",
      partial: "messages/message",
      locals: { message: self },
      target: "#{dom_id(chat)}_messages"
    )
  end

  def broadcast_updated
    broadcast_append_to(
      "#{dom_id(chat)}_messages",
      partial: "messages/message",
      locals: { message: self },
      target: "#{dom_id(chat)}_messages"
    )
  end

  def self.load_messages(messages)
    messages.map { |message| { role: message.role, content: message.content } }
  end
end
