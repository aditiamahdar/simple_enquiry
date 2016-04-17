class CreateSimpleEnquiryEnquiries < ActiveRecord::Migration
  def change
    create_table :simple_enquiry_enquiries do |t|
      t.string :title
      t.references :sender, polymorphic: true, index: true
      t.references :owner, polymorphic: true, index: true
      t.references :object, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
