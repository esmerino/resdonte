class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages, id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
      t.references :chat, null: false, foreign_key: true, type: :uuid
      t.integer :role
      t.string :content

      t.timestamps
    end
  end
end
