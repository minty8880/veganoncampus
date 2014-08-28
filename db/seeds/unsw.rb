unsw            = Institution.create(name: 'University of New South Wales (UNSW)')
kensington      = unsw.campuses.create(name: 'Kensington')

stock_market    = kensington.outlets.create(
  name: 'Stock Market', 
  description: 'Salad bar', 
  location: 'Mathews food court [UPPER CAMPUS]', 
  website: 'http://www.stockmarketkitchen.com.au/')

stock_market.foods.create(
  description: 'Their salads, with the vegan dressings (ask) $7.50 or $8.50')
stock_market.foods.create(
  description: 'Minestrone soup with bread, no cheese $7.50')
stock_market.foods.create(
  description: 'Juices and dairy-free frappes')

sushi_mathews  = kensington.outlets.create(
  name: 'Sushi in Mathews', 
  description: 'Sushi in Mathews', 
  location: 'Mathews food court [UPPER CAMPUS]', 
  website: '')

sushi_mathews.foods.create(
  description: 'The usual')

jewel_of_india  = kensington.outlets.create(
  name: 'Jewel of India', 
  description: '', 
  location: '[UPPER CAMPUS]', 
  website: '')
jewel_of_india.foods.create(
  description: 'Ask for their dairy-free vegetarian curries.')

kebab_mathews  = kensington.outlets.create(
  name: 'Kebab place in Mathews', 
  description: '', 
  location: 'Mathews food court [UPPER CAMPUS]', 
  website: '')

kebab_mathews.foods.create(
  description: 'Falafel or salad roll, no cheese, tabouli optional, with hummus & BBQ sauce (or other sauce) $6.50 and filling.')

tropical_green  = kensington.outlets.create(
  name: 'Tropical Green', 
  description: '', 
  location: 'Near Mathews upstairs [UPPER CAMPUS]', 
  website: 'https://www.facebook.com/TropicalGreen')

tropical_green.foods.create(
  description: 'Vegetarian Salad Noodle Bowl with hoisin sauce, NO egg, NO fish sauce (make sure really clear!) $8.50.')
tropical_green.foods.create(
  description: 'Salad roll no butter no fish sauce for $4.50.')
tropical_green.foods.create(
  description: 'Vegetarian rice paper rolls with no egg (maybe ask for tofu instead).')

blue_stone  = kensington.outlets.create(
  name: 'Blue Stone Cafe', 
  description: '', 
  location: 'Near Morven Brown [UPPER CAMPUS]', 
  website: '')

blue_stone.foods.create(
  description: 'Guessing their freshly made roasted vegetable wrap with garden salad $10 can be made vegan.')
blue_stone.foods.create(
  description: 'Range of dairy-free smoothies for $6.50.')
blue_stone.foods.create(
  description: 'Ask for no fish sauce in some of the stirfries.')

biblio  = kensington.outlets.create(
  name: 'Biblio cafe', 
  description: '', 
  location: '[UPPER CAMPUS]', 
  website: '')

biblio.foods.create(
  description: 'Sometimes biblio have vegan salad/pasta.')

southern_wok  = kensington.outlets.create(
  name: 'Southern Wok', 
  description: '', 
  location: 'near Morven Brown [UPPER CAMPUS]', 
  website: '')

southern_wok.foods.create(
  description: 'Should be some vegan options with their made-to-order rice and noodles, I personally get veggie fried noodles (the flat rice ones) with no egg, no oyster sauce and a cup of soy milk for about $11, you can get the pineapple fried rice as well, same deal no egg no oyster or fish sauce.')

whitehouse  = kensington.outlets.create(
  name: 'Whitehouse', 
  description: '', 
  location: '[LOWER CAMPUS]', 
  website: '')
whitehouse.foods.create(
  description: 'Vegetarian Pizza no cheese $12.')
whitehouse.foods.create(
  description: 'Nachos with no beef, cheese or sour cream $12.')
whitehouse.foods.create(
  description: 'Antipasto wrap w chips, with no pesto and feta, another sauce? $12.')
whitehouse.foods.create(
  description: 'Not really food but kumara chips, chips, wedges wout sour cream $7.')
whitehouse.foods.create(
  description: 'Dips selection with turkish bread $10.')
whitehouse.foods.create(
  description: 'Guac and load corn chips with salsa and guac $8.')

kebab_quad  = kensington.outlets.create(
  name: 'Kebab in Quad', 
  description: '', 
  location: 'Quad [LOWER CAMPUS]', 
  website: '')

kebab_quad.foods.create(
  description: 'Felafal kebab with non-dairy sauce.')

iga  = kensington.outlets.create(
  name: 'IGA', 
  description: '', 
  location: '[LOWER CAMPUS]', 
  website: 'http://iga.com.au/')

iga.foods.create(
  description: 'Always a little something in there that you can go microwave yourself, or they have some pre-made salads that are a bit exxy but good. Or just be a fruitarian for a meal, no biggie.')

stellini  = kensington.outlets.create(
  name: 'Stellini pasta bar', 
  description: '', 
  location: '[LOWER CAMPUS]', 
  website: 'https://www.facebook.com/stellinipastabar')

stellini.foods.create(
  description: 'Have about 3 or 4 vegetarian options that you can order without cheese, $11-13 and quite filling... But beware..MAKE SURE YOU ENSURE THERE IS NO CHEESE as often they get it wrong.')

yummba  = kensington.outlets.create(
  name: 'Yummba', 
  description: '', 
  location: '[LOWER CAMPUS]', 
  website: 'http://www.yummba.com.au/')

yummba.foods.create(
  description: 'This falafel joint is all vegetarian, so go nuts and just avoid the cheese stuff, which is hardly anything on the menu anyway, or just walk past for a free sample if you are just after a snack.. teehee.')

mammak  = kensington.outlets.create(
  name: 'Mamak Village', 
  description: '', 
  location: '[LOWER CAMPUS]', 
  website: 'http://www.mamakvillage.com.au/')

mammak.foods.create(
  description: 'Think the only items without meat, egg or dairy are drinks.')

guzman_y_gomez  = kensington.outlets.create(
  name: 'Guzman Y Gomez', 
  description: '', 
  location: '[LOWER CAMPUS]', 
  website: 'http://www.guzmanygomez.com/')

guzman_y_gomez.foods.create(
  description: 'Burritos...? Or tacos...? Or maybe some nachos? the choice is yours, just ask for no sour cream and no cheese which they are happy to do.')

thoughtful_foods  = kensington.outlets.create(
  name: 'Thoughtful foods', 
  description: '', 
  location: '[LOWER CAMPUS]', 
  website: 'http://www.thoughtfulfoods.org.au/')

thoughtful_foods.foods.create(
  description: 'These guys! Everything in sight is vegan in there, bar a few things, bring your own storage containers and you can fill up on organic, fair trade nibblies, grind-yourself peanut butter, for a fair price. They also sell funky pies (just find a microwave? or do you have to bake those..), addiction food brownies and protein balls.')

bar_navitas  = kensington.outlets.create(
  name: 'Bar Navitas', 
  description: '', 
  location: '[LOWER CAMPUS]', 
  website: 'http://www.barnavitas.com.au/')

bar_navitas.foods.create(
  description: 'Vegetarian pizza, no cheese $13, gf base +$4.')
bar_navitas.foods.create(
  description: 'Soup of the day w/ quinoa and soya bread, if you are lucky it is vegan $9.')

bun_me  = kensington.outlets.create(
  name: 'Bun Me', 
  description: '', 
  location: '[LOWER CAMPUS]', 
  website: '')

bun_me.foods.create(
  description: 'Tofu and avocado vermicelli salad NO FISH SAUCE - really good, approx $8.')
