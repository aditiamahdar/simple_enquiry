require 'simple_enquiry/engine'

module SimpleEnquiry
  # TODO define that model is sender of enquiry
  def simple_enquiry_sender
  end

  # TODO define that model is object of enquiry
  def simple_enquiry_object
  end

  # Owner of object
  def simple_enquiry_owner
  end

  def send_enquiry(object, body)
    enquiry = SimpleEnquiry::Enquiry.where(enquiry_params(self, object)).first_or_create
    enquiry.messages.create(message_params(self, body))
  end

  alias_method :reply_enquiry, :send_enquiry

    def enquiry_params(sender, object)
      {
        sender_id: sender.id,
        sender_type: sender.class.to_s,
        object_id: object.id,
        object_type: object.class.to_s,
        title: object.try(:name) || "Enquiry ##{object.id}",
        owner_id: object.owner_id,
        owner_type: object.owner.class.to_s
      }
    end

    def message_params(sender, body)
      {
        sender_id: sender.id,
        sender_type: sender.class.to_s,
        body: body
      }
    end

    private_class_method :enquiry_params, :message_params
end
