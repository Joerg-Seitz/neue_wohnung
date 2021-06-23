# frozen_string_literal: true

class Receiver < ApplicationRecord
  validates :name, presence: true
  validates :telegram_chat_id, presence: true
  validates :include_wbs, inclusion: [true, false]
  validates(
    :minimum_rooms_number,
    :maximum_rooms_number,
    numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  )
  validate :validate_zip_codes

  def validate_zip_codes
    errors.add(:zip_codes, "Invalida data type. Must be array!") unless zip_codes.is_a? Array
  end
end
