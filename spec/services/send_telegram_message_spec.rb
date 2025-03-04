# frozen_string_literal: true

require "rails_helper"

RSpec.describe SendTelegramMessage do
  it "successfully sends a message" do
    chat_id = ENV.fetch(
      "TELEGRAM_CHAT_ID",
      YAML.load_file(".secrets.yml")["test_chat_id"]
    )

    result = SendTelegramMessage.new.call(chat_id, "This is a test message")
    expect(result.fetch("ok")).to eq true
  end
end
