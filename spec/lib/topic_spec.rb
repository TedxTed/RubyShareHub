require 'topic'

RSpec.describe ShareHub::Topic do
  let(:topic) { described_class.new(name: 'Object') }
  let(:list_comment) do
    [{ content: 'Great topic!', no: 1 },
     { content: 'Interesting!', no: 2 }]
  end

  describe 'create topic' do
    it 'creates a new topic' do
      expect(topic).to be_kind_of(ShareHub::Topic)
      expect(topic.name).to eq('Object')
      expect(topic.approve).to eq(false)
      expect(topic.comments).to eq([])
    end
  end

  describe '#approve_topic' do
    it 'approves a topic' do
      topic.approve_topic
      expect(topic.approve).to eq(true)
    end
  end

  describe '#add_comment' do
    it 'adds a comment to a topic' do
      topic.add_comment('Great topic!')
      expect(topic.comments).to include('Great topic!')
    end
  end

  describe '#get_comments' do
    it 'gets comments of a topic' do
      comment1 = 'Great topic!'
      comment2 = 'Interesting!'
      topic.add_comment(comment1)
      topic.add_comment(comment2)
      expect(topic.get_comments).to eq(list_comment)
    end
  end
end
