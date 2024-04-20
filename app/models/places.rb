class Place < ApplicationRecord
    has_many :addresses
    accepts_nested_attributes_for :addresses, reject_if: :reject_blank_address
  
    private
  
    def reject_blank_address(attributes)
      attributes['street'].blank? && attributes['city'].blank? 
    end
  end
  