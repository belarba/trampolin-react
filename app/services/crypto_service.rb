class CryptoService
  include HTTParty
  base_uri "https://pro-api.coinmarketcap.com/v1"

  def latest
    headers = {'X-CMC_PRO_API_KEY' => '5f29172f-8649-4958-80d3-44d3a2817c56'}
    query = {'start' => '1', 'limit' => '10', 'convert' => 'BRL'}
    self.class.get('/cryptocurrency/listings/latest', headers: headers, query: query)
  end
end
