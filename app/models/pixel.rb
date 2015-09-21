class Pixel < ActiveRecord::Base
  has_many :impressiond

  before_create :generate_token

  TOKEN_LENGTH = 16

  protected

  def generate_token
    self.token = loop do
      random_token = SecureRandom.hex(TOKEN_LENGTH)
      break random_token unless Pixel.exists?(token: random_token)
    end
  end
end
