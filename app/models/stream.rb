class Stream < ApplicationRecord
    has_one_attached :stream_graphic
    belongs_to :user

    validates :name, :description, :schedule, presence: true
    validates :name, uniqueness: true



end
