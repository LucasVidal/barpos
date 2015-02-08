class Order < ActiveRecord::Base
  belongs_to :table
  has_many :order_lines
  has_many :products, through: :order_lines

  scope :open, -> { where(:status==:open)}

end
