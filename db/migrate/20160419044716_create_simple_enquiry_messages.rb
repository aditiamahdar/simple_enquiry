class CreateSimpleEnquiryMessages < ActiveRecord::Migration
  def change
    create_table :simple_enquiry_messages do |t|
      t.references :enquiry, index: true, foreign_key: true
      t.string :body
      t.references :sender, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
