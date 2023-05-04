class Artwork < ApplicationRecord
    validates :title, 
            uniqueness: {scope: :artist_id, message: "Artist may not have duplicate titles" },
            :image_url, uniqueness: true


    belong_to :artist,
    foreign_key: :artist_id,
    class_name: :User

    # has_many :viewers,
    # foreign_key: :artist_id,
    # class_name: :User,
    # dependent: :destroy

end
