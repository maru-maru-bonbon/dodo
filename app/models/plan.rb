class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :term
  belongs_to_active_hash :price
  has_many :plan_users
  has_many :users, through: :plan_users
  accepts_nested_attributes_for :plan_users, allow_destroy: true

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