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
end
