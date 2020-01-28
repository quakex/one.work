class Requirement < ApplicationRecord
  attribute :name, :string
  attribute :mobile, :string
  attribute :from, :string
  attribute :to, :string
  attribute :pick_on, :date
  attribute :pick_at, :time
  attribute :note, :string

  belongs_to :user
  has_many :requirement_volunteers, dependent: :delete_all
  has_many :volunteers, through: :requirement_volunteers

  has_one_attached :credential

  def mobile_public
    "#{'*' * 7 }#{mobile[-4..-1]}"
  end

end