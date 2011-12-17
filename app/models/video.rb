class Video < ActiveRecord::Base
  validates_presence_of :title, :embed
  validate :must_have_valid_embed_code


  def must_have_valid_embed_code
    unless embed.include? "<iframe"
      errors.add(:embed, "Must include an iframe tag")
    end
  end
end
