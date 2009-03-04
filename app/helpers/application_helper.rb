# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
    def display_stars(stars)
      content_tag :div, star_images(stars), :class => 'stars'
    end

    def star_images(stars)
      (0...5).map do |n|
        star_image_tag(((stars-n)*2).round)
      end.join
    end

    def star_image_tag(value)
      image_tag "/images/#{star_image_name(value)}.gif", :size => '15x15'
    end

    def star_image_name(value)
      if value <= 0
        'small_empty_star'
      elsif value == 1
        'small_half_star'
      else
        'small_full_star'
      end
    end
  end