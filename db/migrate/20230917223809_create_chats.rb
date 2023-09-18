class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats, id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
      t.timestamps
    end
  end
end
