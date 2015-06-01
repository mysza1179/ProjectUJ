class Ticket < ActiveRecord::Base
  belongs_to :user
  belong_to :userproject
end
