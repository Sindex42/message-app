class History

  def initialize
    @messages = []
  end

  def add(message)
    @messages << message
  end

  def log
    @messages
  end

  def display
    x = @messages.map do |message|
      "#{message.time} -- #{message.text}"
    end
    x
  end



end
