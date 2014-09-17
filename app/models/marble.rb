class Marble < ActiveRecord::Base

	belongs_to :user
  has_many :comments

  validates :user_id, presence: true

	  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :avatar, photos: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  has_attached_file :avatar, :styles => {
    :square => "200x200#",
    :medium => "300x300>", 
    :thumb => "100x100>" }, 
    :default_url => "/images/:style/missing.png"

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates_with AttachmentSizeValidator, :attributes => :avatar, :less_than => 10.megabytes

  #scope order('updated_at desc')
  scope :updated_at, -> {where(updated_at: desc)}

  def self.descend
    order('updated_at desc')
  end

end


  


    
  
  

  