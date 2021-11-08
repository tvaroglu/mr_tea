class TeaService
  class << self
    def base_url
      'https://tea-api-vic-lo.herokuapp.com'
    end

    def conn
      Faraday.new(base_url)
    end

    def get_teas
      response = conn.get('/tea')
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
