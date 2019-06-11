class CryptosController < ApplicationController
  def index
    @valores = Crypto.all
  end

  def update
    valores = CryptoService.new.latest
    Crypto.delete_all

    valores['data'].each do |valor|
      crypto = Crypto.new
      crypto.name = valor['name']
      crypto.value = valor['quote']['BRL']['price'].round(2)
      crypto.save
    end

    redirect_to crypto_path
  end
end
