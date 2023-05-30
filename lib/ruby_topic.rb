require_relative 'topic'

module ShareHub
  class RubyTopic < Topic
    def initialize(name:)
      super(name: name)
      @category = 'ruby'
    end
    
    def add_comment(comment)
      @comments << "ruby: #{comment}"
    end
  end
end

p ShareHub::RubyTopic.new(name: 'ted')
