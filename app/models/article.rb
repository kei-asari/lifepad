class Article < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :clips

  has_attached_file :thumbnail,
                      styles:  { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :thumbnail,
                                      content_type: ["image/jpg","image/jpeg","image/png"]
end
