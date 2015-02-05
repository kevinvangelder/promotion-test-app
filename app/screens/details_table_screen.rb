class DetailsTableScreen < PM::TableScreen
  attr_accessor :details

  def table_data
    [{
      cells: [{
        title: "Max Speed: #{details[:max_speed]}"
      },{
        title: "Length: #{details[:length]}"
      },{
        title: "Wingspan: #{details[:wingspan]}"
      },{
        title: "Passengers: #{details[:passengers]}"
      }]
    }]
  end
end