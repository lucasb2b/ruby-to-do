class Menu
  attr_reader :options

  def initialize
    @options = {
      0 => :exit,
      1 => :list
    }
  end

  def display_menu
    @options.each do |option|
      puts "#{option.first.to_s.center(5, ' ')} -> #{option.fisrt}"
      # 0 -> exit
      
    end
  end
end