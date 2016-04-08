class Product < ActiveRecord::Base
  belongs_to :user
  #必須項目
  validates :name, :start, :period, :interval, :conditions, presence: true
  validates :start, timeliness: {format: '%Y/%m/%d'}

end
