class TeaFacade
  class << self
    def format_all_teas
      response = TeaService.query_all_teas
      response.map { |tea_obj| Tea.new(tea_obj) }
    end
  end
end
