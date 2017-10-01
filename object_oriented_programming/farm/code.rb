require_relative 'field'

class MyFarm

  def initialize(name)
    @name = name
  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.chomp
      farm_action(user_selected)
    end
  end

  def print_main_menu
    puts 'field -> adds a new field'
    puts 'harvest -> harvests crops and adds to total harvested'
    puts 'status -> displays some information about the farm'
    puts 'relax -> provides lovely descriptions of your fields'
    puts 'exit -> exits the program'
    puts 'Enter an action: '
  end

  def farm_action(user_selected)
    case user_selected
    when "field" then add_new_field
    when "harvest" then harvest_crops
    when "status" then farm_info
    when "relax" then lovely_farm_desc
    when "exit" then abort("Exiting...")
    end
  end

  def add_new_field
    print 'What kind of field is it: corn or wheat? '
    field_type = gets.chomp

    print 'How large is the field in hectares? '
    field_size = gets.to_i

    Field.create(field_type, field_size)

    puts "Added a #{field_type} field of #{field_size} hectares!"
  end

  def harvest_crops
    Field.harvest
    puts "The farm has #{Field.display_harvest} harvested food so far."
  end

  def farm_info
    puts Field.status
  end

  def lovely_farm_desc
    puts Field.each_field_harvest
  end

end

farm_1 = MyFarm.new("Abby's")

farm_1.main_menu
# puts Farm.see_fields.inspect
