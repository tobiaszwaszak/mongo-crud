class PollAnswer
  include Mongoid::Document
  include Mongoid::Timestamps
  field :answer, type: String
  belongs_to :poll
  has_many :votes
end
