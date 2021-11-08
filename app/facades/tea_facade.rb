class TeaFacade
  class << self
    def get_teas
      response = TeaService.get_teas
      response.map { |tea_obj| Tea.new(tea_obj) }
    end
  end
end
