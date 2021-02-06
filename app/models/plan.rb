class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :term
  belongs_to_active_hash :price
  belongs_to :user

  with_options presence: true do
    validates :image, unless: :was_attached?
    validates :name  
    validates :description
    validates :category_id
    validates :term_id
    validates :price_id
  end

  validates :category_id, :term_id, :price_id, numericality: { other_than: 1 ,message: 'を選択して下さい'} 
  has_one_attached :image
  def was_attached?
    self.image.attached?
  end
end