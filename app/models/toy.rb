class Toy < ApplicationRecord
  belongs_to :toy_type
  belongs_to :toy_status
end

#class Toy < ApplicationRecord
  # other code...

  #scope :to_be_picked_up, -> { where(status: 'reserved') }

  # other code...
#end

# app/admin/toys.rb
#ActiveAdmin.register Toy do
  # other code...

  #scope :all
  #scope :to_be_picked_up

  # other code...
#end
