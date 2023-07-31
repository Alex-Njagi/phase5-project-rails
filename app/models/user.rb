class User < ApplicationRecord
    has_secure_password

    validates :name, :status, :email, presence: true
    validates :phone_number, length: { maximum: 10 }
    validates :status, inclusion: { in: ['Farming Group Administrator', 'Public Client'] }
end
