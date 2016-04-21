module SimpleEnquiry
  class Enquiry < ActiveRecord::Base
    belongs_to :sender, polymorphic: true
    belongs_to :owner, polymorphic: true
    belongs_to :object, polymorphic: true
    delegate :name, to: :object, prefix: true, allow_nil: true

    has_many :messages, dependent: :destroy

    validates :title, :object, :owner, :sender, presence: true
  end
end
