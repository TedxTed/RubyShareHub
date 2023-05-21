module ShareHub
  class Topic
    attr_accessor :name, :approve

    def initialize(name:)
      @name = name
      @approve = false
      @category ||= 'common'
    end

    def approve_topic
      @approve = !@approve
    end
  end
end

module ShareHub
  class RubyTopic < Topic
    def initialize(name:)
      super(name: name)
      @category = 'ruby'
    end
  end
end

p a = ShareHub::RubyTopic.new(name: 'Object')
p a.approve_topic
p a.approve
p a
