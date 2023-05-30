# frozen_string_literal: true

# lib/topic.rb

require_relative 'serial'

module ShareHub
  class Topic
    attr_accessor :name, :approve, :comments, :category

    include ShareHub::Serial

    def initialize(name:)
      @name = name
      @approve = false
      @category ||= 'common'
      @comments = []
    end

    def approve_topic
      @approve = !@approve
    end

    def add_comment(comment)
      comments << comment
    end

    def list_comments
      list_object(comments)
    end
  end
end
