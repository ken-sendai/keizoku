class Product < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
  #必須項目
  validates :name, :start, :period, :interval, :conditions, presence: true
  validates :start, timeliness: {format: '%Y/%m/%d'}

=======
>>>>>>> ac66dd36a2730c9829d960ddcef508e076f6603f
end
