class Client < ApplicationRecord
    validates(:name ,:age, :address , { presence: true })
end