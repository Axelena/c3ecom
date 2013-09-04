class DirectBinContent < ActiveRecord::Base
  validates :bin_name, presence: true, length: {maximum: 15}
  validates :item_code, presence: true, length: {maximum: 15}

  default_scope -> { order('bin_name DESC')}

end
