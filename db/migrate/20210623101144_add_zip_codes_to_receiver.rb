# frozen_string_literal: true

class AddZipCodesToReceiver < ActiveRecord::Migration[6.1]
  def change
    add_column :receivers, :zip_codes, :string, array: true, default: []
  end
end
