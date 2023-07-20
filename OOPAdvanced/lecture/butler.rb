class Butler
  def initialize(castle)
    @castle = castle
  end

  def clean_castle
    puts "#{@castle.name} has been cleaned"
  end
end