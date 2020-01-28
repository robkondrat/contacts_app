class Contact < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, with: /\A\w+[.][a-zA-Z]{2,}\z/i

  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def japan_number
    "+81 #{phone_number}"
  end
end
