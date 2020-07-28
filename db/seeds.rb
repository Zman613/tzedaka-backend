# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'Rando User', photo_url: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fyt3.ggpht.com%2F-7bU6rlbbKpY%2FAAAAAAAAAAI%2FAAAAAAAAAAA%2FT5vvBivtNns%2Fs900-c-k-no-mo-rj-c0xffffff%2Fphoto.jpg&f=1&nofb=1', balance: 5000)

charities = Charity.create([
  {"name": "KUPATH RABBI MEIR BAAL HANES", "photo_url": "https://kupathrabbimeir.org/Skins/Kartris/Images/logo.png", "balance": 0},
  {"name": "Hatzalah of Crown Heights", "photo_url": "https://www.hatzalah.ch/wp-content/uploads/2017/02/CHlogoweb.png", "balance": 0},
  {"name": "Keren Simchas Chosson V'Kallah", "photo_url": "https://www.kscvk.org/images/logo-color-120.png", "balance": 0}
])
user.user_charities.create(charity_id: charities.first.id)