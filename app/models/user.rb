class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

has_one :cart
has_many :line_items
has_many :addresses
    #        [   0   , 1      2  ]
  enum role: [:admin, :user,:seller]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        # after_save :after_confirmation
        #  def  after_confirmation
        #   WelcomeMailer.send_greetings_notification(self).deliver_now
        # end
end
