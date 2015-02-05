class DetailsLayout < MK::Layout
  attr_accessor :details
  view :details_table

  def layout
    root :main do
      add UIImageView, :helicopter_image
      add UILabel, :name
      add details_table, :details_table
    end
  end

  def main_style
    background_color "#F9F9F9".uicolor
  end

  def helicopter_image_style
    image details[:image].uiimage
    clips_to_bounds true
    layer do
      corner_radius 50.0
    end
    constraints do
      left 20
      top 84
      width 100
      height 100
    end
  end

  def name_style
    text details[:name]
    font UIFont.boldSystemFontOfSize(16)
    constraints do
      top 118
      right_of(:helicopter_image).plus(20)
      height 30
    end
  end 

  def details_table_style
    top 200
    left 0
    right "100%"
  end

end