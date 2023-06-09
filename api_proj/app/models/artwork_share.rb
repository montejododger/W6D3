class ArtworkShare < ApplicationRecord
    validates :artwork_id, 
    uniqueness: {scope: :viewer_id, message: "Art can only be shared with viewer once."}

    belongs_to :artwork,
        foreign_key: :artwork_id,
        class_name: :Artwork

    belongs_to :viewer,
        foreign_key: :viewer_id,
        class_name: :User,
        inverse_of: :views

end
