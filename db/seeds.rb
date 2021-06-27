# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
# . . .
Product.create!(title: 'Iphone 12 Pro Max',
description:
%{
The iPhone 12 Pro and iPhone 12 Pro Max are smartphones designed and marketed by Apple Inc.
They are the flagship smartphones in the fourteenth generation of the iPhone, succeeding the iPhone 11 Pro and iPhone 11 Pro Max, 
and were announced on October 13, 2020, with the iPhone 12 Pro being released on October 23, 2020, and the iPhone 12 Pro Max on November 13, 2020. 
The devices were unveiled alongside the iPhone 12 and iPhone 12 Mini at an Apple Special Event at Apple Park in Cupertino, California on October 13, 2020},
image_url: 'IPhone 12 Pro Max (Graphite Black).jpg',
price: 97000.0)
# . . .

# . . .
Product.create!(title: 'Oppo Reno 5 Pro',
description:
%{
    Oppo Reno is a line of camera-focused Android smartphones manufactured by Oppo. 
    Its flagships Oppo Reno, Reno 10x Zoom, and Reno 5G were officially announced on April 10, 2019, while the midrange Reno Z was on May 30, 2019.
    The Reno was launched on April 24, 2019, in Zurich, Switzerland.[5] The Oppo Reno lineup was followed by the Reno2, 
    which was launched in India on August 28, 2019,[6] and the Reno Ace which was released in October 2019.},
image_url: 'Oppo Reno 5 Pro (Ocean Blue).jpeg',
price: 35000.0)
# . . .

# . . .
Product.create!(title: 'Oneplus 7 pro',
description:
%{
    The OnePlus 7 Pro features a curved edge-to-edge 6.67" 19.5:9 FLUID AMOLED display with a 3K resolution (3120×1440 pixels) and 90 Hz refresh rate. 
    It comes in three variants: 6 GB RAM with 128 GB storage, 8 GB RAM with 256 GB storage and 12 GB RAM option with 256 GB storage. 
    The OnePlus 7 Pro also features a 4000 mA⋅h non-removable battery along with Warp Charge 30 technology.},
image_url: 'Oneplus 7 pro (Blue).jpeg',
price: 47000.0)
# . . .