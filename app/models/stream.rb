class Stream < ApplicationRecord
    has_one_attached :stream_graphic
    belongs_to :user

    validates :name, :description, :schedule, presence: true
    validates :name, uniqueness: true

    def stream_graphic_url 
        Rails.application.routes.url_helpers.url_for(stream_graphic) if stream_graphic.attached?
    end



end
