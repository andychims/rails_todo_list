class Todo
  attr_accessor :content, :complete, :priority

  def initialize(content, complete, priority)
    @content = content
    @complete = complete
    @priority = priority
  end

  def show_content
    puts "I really need to #{@content} w priority #{@priority}"
  end

  # def complete?
  #   @complete
  # end
end