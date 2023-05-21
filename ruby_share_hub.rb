require_relative './topic'
require_relative './serial'

module ShareHub
  class RubyShareHub
    attr_accessor :topics

    include Serial

    def initialize
      @topics = []
    end

    def create_topic(topic:, name:)
      name = serialize(topics, name)
      topics << case topic
                when 'ruby'
                  ShareHub::RubyTopic.new(name: name)
                else
                  ShareHub::Topic.new(name: name)
                end
    end
  end
end

ruby_share_hub = ShareHub::RubyShareHub.new
ruby_share_hub.create_topic(topic: 'ruby', name: 'ted')
ruby_share_hub.create_topic(topic: '', name: 'ning')
p '---------------'
p ruby_share_hub.topics
p '--------------------'
p ruby_share_hub.topics[0].class # <- ShareHub::RubyTopic
p ruby_share_hub.topics[0].class.class # <- Class
p ruby_share_hub.topics[0].class.superclass # <- ShareHub::Topic
p ruby_share_hub.topics[0].class.superclass.class # <- Class
p ruby_share_hub.topics[0].class
p ruby_share_hub.topics[0].class.instance_methods(false)
p ruby_share_hub.topics[0].superclass
