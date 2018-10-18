# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Band.destroy_all

Band.create!(name: 'Rage', image: 'https://f4.bcbits.com/img/a0853065804_10.jpg')
Band.create!(name: 'Filthy Dishes', image: "https://cdn-images-1.medium.com/max/1600/1*5Dp5mnzYNsqV_dQiXa2W9g.png")
Band.create!(name: 'The Driveway', image: "https://static.concretenetwork.com/photo-gallery/images/787x410Exact/concrete-driveways_8/stamped-concrete-driveway-d-e-contreras-construction_61246.jpg")
Band.create!(name: 'Nice N Polite', image: "https://cdn.mindful.org/2016/06/kindness-ggsc.jpg?q=80&fm=jpg&fit=crop&w=1400&h=875")
Band.create!(name: 'Wool Hat tha Cool', image: "https://ae01.alicdn.com/kf/HTB19aP6ewoQMeJjy0Fnq6z8gFXaI/Hat-winter-men-and-women-knitting-hoods-wool-hat-thickening-warm-cycling-masked-cold-collar-scar.jpg_640x640.jpg")
