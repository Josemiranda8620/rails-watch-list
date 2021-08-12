class Movie < ApplicationRecord
    has_many :bookmarks
    has_many :lists, through: :bookmarks

    # , dependent: :restrict_with_exception
    validates :title, presence: true, uniqueness: true
    validates :overview, presence: true


end
