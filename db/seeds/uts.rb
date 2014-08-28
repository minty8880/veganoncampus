uts             = Institution.create(name: 'University of Technology Sydney (UTS)')
city            = city.campuses.create(name: 'City')

another_hideaway    = city.outlets.create(
  name: 'Another Hideaway Cafe', 
  description: 'They have a couple vegan options on the menu.  Two of the staff members are also vegan and are incredibly accommodating. They are also the location for the completely vegan pop up cafe "The Veggie Tables" that is open once a month on a Saturday.', 
  location: 'Down the alleyway past Pausa next to DAB, Building 6', 
  website: 'https://www.facebook.com/anotherhideaway')

another_hideaway.foods.create(
  description: 'Breakfast is Balsamic Veges on Rye Toast and the Salsa chips upon request.')
another_hideaway.foods.create(
  description: 'On Mondays there is usually a vegan cake!')

haris_on_broadway    = city.outlets.create(
  name: 'Hari\'s on Broadway', 
  description: 'Everything vegetarian with most vegan, they even do student discounts.', 
  location: 'Literally 5 minutes from campus', 
  website: 'http://harisvegetarian.com.au/')

thai_in_a_box    = city.outlets.create(
  name: 'Thai in a Box', 
  description: 'Has vegan options if you choose for them to make it fresh.', 
  location: 'In the Underground', 
  website: 'http://thainabox.com.au/')

kebab_underground    = city.outlets.create(
  name: 'Kebab place', 
  description: '', 
  location: 'In the Underground', 
  website: '')

kebab_underground.foods.create(
  description: 'TBC - Falafel kebab is vegan, getting confirmation on ingredients!')
