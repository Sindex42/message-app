class Message
  attr_reader :text, :time, :id

  def self.id_reset
    @id = 0
  end

  def self.increase
    @id ||= 0
    @id += 1
  end

  def initialize(text)
    @text = text
    @time = Time.now.strftime('%d-%m-%Y %H:%M:%S')
    @id = Message.increase
  end
end
