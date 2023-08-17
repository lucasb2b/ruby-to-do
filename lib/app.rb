require_relative 'models/menu'

class App
  attr_accessor :keep_going

  def initialize
    @keep_going = true
    @menu = Menu.new
  end

  def call
    run
  end

  private

  def run
    while keep_going
      show_menu
      keep_going?
    end
  end

  def show_menu
    @menu.display_menu
  end

  def keep_going?
    user_option = gets.chomp.to_i
    self.keep_going = false if @menu.options[user_option] == :exit

  end
end

App.new.call