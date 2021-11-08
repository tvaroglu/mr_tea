class Tea
  attr_reader :id, :name, :description, :temperature, :brew_time

  def initialize(tea_response)
    @id = tea_response[:_id]
    @name = tea_response[:name]
    @description = tea_response[:description]
    @temperature = tea_response[:temperature]
    @brew_time = tea_response[:brew_time]
  end
end
