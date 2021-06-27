require "test_helper"

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be positive" do
    product = Product.new(
    title: "Iphone XR", description: "XRXRXRXRXRXRXR", image_url:"IPHONE_XR.jpg")
    product.price = -99999
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
    product.errors[:price]
    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
    product.errors[:price]
    product.price = 1
    assert product.valid?
  end

  def new_product(image_url)
    Product.new(title:"Vivo X60 Pro", description: "X60X60X60X60", price: 1, image_url: image_url)
  end

  test "image url" do
    ok = %w{ X60.gif X60.jpg X60.png X60.JPG X60.Jpg http://www.vivo.com/vivo/X/60/Pro/X60.gif }
    bad = %w{ X60.doc X60.gif/more X60.gif.more }
    ok.each do |image_url|
      assert new_product(image_url).valid?,
      "#{image_url} shouldn't be invalid"
    end
    bad.each do |image_url|
      assert new_product(image_url).invalid?,
      "#{image_url} shouldn't be valid"
    end
  end

  test "product is not valid without a unique title - i18n" do
    product = Product.new(title: products(:ruby).title,description: "yyy", price: 9999.9, image_url: 'product.gif')
    assert product.invalid?
    assert_equal [I18n.translate('errors.messages.taken')], product.errors[:title]  
  end

end