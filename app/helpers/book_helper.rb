module BookHelper
  def cover_image_tag(book, width: 600, height: 450, index_img: false)
    if index_img
      if book.cover_image.attached?
        variant_image(book, width, height)
      else
        image_tag "https://fakeimg.pl/350x350/?text=Hello"
      end
    else
      if book.cover_image.attached?
        variant_image(book, width, height)
      end
    end
  end

  def variant_image(book, width, height)
    image_tag book.cover_image.variant(resize_to_limit: [width, height])
  end
end

