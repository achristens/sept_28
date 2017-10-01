class Field

  @@fields  = []
  @@harvest = 0

  def initialize(field_type, field_size)
    @field_type = field_type
    @field_size = field_size
  end

  # READERS
  def field_type
    @field_type
  end

  def field_size
    @field_size
  end

  #INSTANCE METHODS
  def food_produced
    if self.field_type == "corn"
      food_produced = @field_size * 20
    else
      food_produced = @field_size * 30
    end
    return food_produced
  end


  # Class Methods

  def self.each_field_harvest
    corn_fields  = 0
    wheat_fields = 0
    @@fields.each do |field|
      if field.field_type == "corn"
        corn_fields += field.field_size
      else
        wheat_fields += field.field_size
      end
    end
     "#{corn_fields} hectares of tall greenstalks rustling in the breeze fill your horizon.\nThe sun hangs low, casting an orange glow on a sea of #{wheat_fields} hectares of wheat."
  end

  def self.harvest
    @@fields.each do |field|
      @@harvest += field.food_produced
      puts "Harvesting #{field.food_produced} from #{field.field_size} hectares #{field.field_type} field."
    end
  end

  def self.status
    @@fields.each do |field|
      puts "#{field.field_type} field is #{field.field_size} hectares."
    end
    puts "The farm has #{@@harvest} harvested food so far."
  end

  def self.create(field_type, field_size)
    new_field = Field.new(field_type, field_size)
    @@fields << new_field
    return new_field
  end

  def self.see_fields
    @@fields
  end

  def self.display_harvest
    @@harvest
  end

end

# corn = Field.create('corn', 100)
# wheat = Field.create('wheat', 500)
# corn = Field.create('corn', 100)
# wheat = Field.create('wheat', 1000)
# puts corn.inspect
# puts Field.see_fields.inspect
# puts Field.harvest
# puts Field.harvest
# puts Field.status
# puts Field.each_field_harvest
