class DetailsScreen < PM::Screen
  attr_accessor :helicopter

  def on_load
    @layout = DetailsLayout.new(root: self.view)
    @layout.details = helicopter_details[helicopter]
    @layout.details_table = details_table.view
    @layout.build
    self.title = helicopter
  end

  def details_table
    @details_table ||= begin 
      dt = DetailsTableScreen.new(details: helicopter_details[helicopter])
      self.addChildViewController dt
      dt.parent_screen = self
      dt
    end
  end

  def helicopter_details
    {
      "Dauphin" => {
        name: "Eurocopter AS365",
        image: "dauphin.jpg",
        max_speed: "190.14 mph",
        length: "45' 1\"",
        wingspan: "39' 2\"",
        passengers: "12"
      },
      "Little Bird" => {
        name: "MD MH-6",
        image: "little-bird.jpg",
        max_speed: "174.92 mph",
        length: "37' 7\"",
        wingspan: "27' 8\"",
        passengers: "4-6"
      },
      "Chinook" => {
        name: "Boeing CH-47",
        image: "chinook.jpg",
        max_speed: "150 mph",
        length: "98' 11\"",
        wingspan: "60' 0\"",
        passengers: "34"
        },
      "Blackhawk" => {
        name: "Sikorsky UH-60",
        image: "blackhawk.jpg",
        max_speed: "182.99 mph",
        length: "64' 10\"",
        wingspan: "53' 8\"",
        passengers: "12"
      }
    }
  end
end