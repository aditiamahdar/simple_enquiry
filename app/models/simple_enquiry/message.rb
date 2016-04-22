module SimpleEnquiry
  class Message < ActiveRecord::Base
    belongs_to :enquiry
    belongs_to :sender, polymorphic: true

    validates :body, :enquiry, :sender, presence: true
  end
end
