module ShareHub
  module Serial
    def serialize(list, name)
      raise StandardError, 'wrong type of list' unless list.instance_of?(Array)

      "no.#{list.length + 1} #{name} "
    end
  end
end
