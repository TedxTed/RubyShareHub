# frozen_string_literal: true

# lib/serial.rb

module ShareHub
  module Serial
    def list_object(list)
      raise StandardError, 'wrong type of list' unless list.instance_of?(Array)

      list.map.with_index do |content, index|
        {
          no: index + 1,
          content: content
        }
      end
    end
  end
end
