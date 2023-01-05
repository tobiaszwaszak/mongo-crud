class Poll
  include Mongoid::Document
  include Mongoid::Timestamps
  field :question, type: String
  has_many :poll_answers
  has_many :votes
  belongs_to :user
end
