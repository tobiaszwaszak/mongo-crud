class Vote
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :poll_answer
  belongs_to :poll
end
