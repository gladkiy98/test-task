class PhoneNumber < ApplicationRecord
  belongs_to :user

  validates :number, presence: true, uniqueness: true
  validate :custom

  private

  def custom
    num = number.scan(/\d/).join('').to_i
    if num < 1111111111 || num > 9999999999
      errors.add :number, 'Wrong number'
    end
  end
end
