class HomeScreen < PM::TableScreen
  title "Helicopters"

  def on_load
    @layout = HomeLayout.new(root: self.view)
    @layout.build
  end

  def table_data
    [{
      cells: helicopters.map do |h|
        {
          title: h,
          action: :select_helicopter,
          arguments: { helicopter: h }
        }
      end
    }]
  end

  def helicopters
    [
      "Dauphin",
      "Little Bird",
      "Chinook",
      "Blackhawk"
    ]
  end

  def select_helicopter(args={})
    open_screen DetailsScreen.new(helicopter: args[:helicopter])
  end

end
