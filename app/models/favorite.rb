class Favorite < ApplicationRecord
  belongs_to :user_id
  belongs_to :feeling_id
end
