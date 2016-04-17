module SimpleEnquiry
  class Enquiry < ActiveRecord::Base
    belongs_to :sender, polymorphic: true
    belongs_to :owner, polymorphic: true
    belongs_to :object, polymorphic: true
  end
end
