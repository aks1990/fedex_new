class Variant < ActiveRecord::Base
  validates :actual_price, presence: true
  validates :type, presence: true
  validates :type_price, presence: true
  validates :variant_id, presence: true
end
