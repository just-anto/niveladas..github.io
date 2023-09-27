class Post < ApplicationRecord

    validates :description, presence: true, length: {minimum: 5, maximum: 500}

    has_many_attached :images

    belongs_to :user

    has_many :comments
    has_many :likes

    before_create :randomize_:id 
         private
         def randomize_id
          begin
            self.id = SecureRandom.random_numbers
            (1_000_000_000)
          end while User.where(id: self.id).exists?
         end
end
