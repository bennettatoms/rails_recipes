require_relative './recipe'


# This is the master file of all recipes featured on the website
class RecipeBook

  def self.all
    [
      Recipe.new( id:           1,
                  name:         'Ginger Carrot Soup',
                  category:     'Soup/Vegetarian',
                  ingredients:{ 'tablespoons of sweet cream butter' => 2,
                                'onions, peeled and chopped' => 2,
                                'cups of vegetable broth' => 6,
                                'pounds of carrots, peeled and sliced' => 2,
                                'tablespoons grated fresh ginger' => 2,
                                'cup of whipping cream' => 1,
                                'salt' => 'to taste',
                                'white pepper' => 'to taste',
                                'sour cream' => 'to taste',
                                'parsley' => 'for garnish'
                              },
                  preparation: ['In a 6-quart pan, over medium high heat, add butter and onions and cook, 
                                stirring often, until onions are limp. Add broth, carrots, and ginger. 
                                Cover and bring to a boil. Reduce heat and simmer until carrots are 
                                tender when pierced.',
                                
                                'Remove from heat and transfer to a blender. Don\'t fill the blender more 
                                than half way; do it in batches if you have to. Cover the blender and then 
                                hold a kitchen towel over the top of the blender*. Be careful when blending 
                                hot liquids, as the mixture can spurt out of the blender. Pulse the blender to 
                                start it and then puree until smooth. Return to the pan and add cream, stir 
                                over high heat until hot. For a smoother flavor bring soup to a boil, add salt 
                                and pepper, to taste.',

                                'Ladle into bowls and garnish with a dollop of sour cream and parsley sprigs.',

                                '*When blending hot liquids: Remove liquid from the heat and allow to cool 
                                for at least 5 minutes. Transfer liquid to a blender or food processor and 
                                fill it no more than halfway. If using a blender, release one corner of 
                                the lid. This prevents the vacuum effect that creates heat explosions. Place 
                                a towel over the top of the machine, pulse a few times then process on 
                                high speed until smooth.'],
                  cooking_time: { total: 95, prep: 30, cook: 45, inactive: 20 },
                  serves:       8,
                  difficulty:  'Easy',
                  rating:       [5.0, 5.0, 'stars'],
                  image_file:   'ginger_carrot_soup.jpeg',
                  comment:      'One of my FAVORITE soups! I "sauté" the onion in a bit of vegetable broth
                                instead of butter...takes a bit longer, but healthy alternative with a cleaner 
                                taste. I also use vegetable broth instead of chicken for the stock on this one. 
                                Use a blender at the end on puree/liquify and it is so silky and creamy it 
                                doesn\'t need added cream! I also a lot more ginger than is called for and a 
                                bit of lemon squeezed in at the end.',
                  source:       'http://www.foodnetwork.com/recipes/ginger-carrot-soup-recipe.html'
                ),
      Recipe.new( id:           2,
                  name:         'Butternut Squash, Spinach, and Goat Cheese Pizza',
                  category:     'Entree/Vegetarian',
                  ingredients:{ 'cups cubed butternut squash (1/2-inch pieces)' => 2,
                                'tablespoon olive oil' => 1,
                                'teaspoon olive oil (separate from tablespoon above)' => 1,
                                'teaspoon salt, divided' => 0.25,
                                'teaspoon freshly ground black pepper, divided' => 0.25,
                                'medium red onion, halved and thinly sliced' => 1,
                                'cup all-purpose flour' => 0.25,
                                'ball (16 oz) store-bought whole-wheat pizza dough, at room temperature' => 1,
                                'cups chopped fresh baby spinach' => 2,
                                'ounces crumbled goat cheese' => 4,
                                'teaspoon dried thyme' => 0.5,
                                'tablespoons cornmeal' => 2
                              },
                  preparation: ['Heat oven to 400°. Heat pizza stone on bottom rack (or use an inverted 11-in 
                                x 16-in cookie sheet, not heated). Toss squash with 1 tsp oil, 1/8 tsp salt 
                                and 1/8 tsp pepper. On a baking sheet, cook squash until soft and lightly browned, 
                                25 minutes, stirring halfway through; set aside.',
                                
                                'In a large skillet over medium-high heat, heat remaining 1 tbsp oil. Cook onion 
                                (season with remaining 1/8 tsp salt and 1/8 tsp pepper), stirring, until light brown, 
                                10 minutes. Add 2 tbsp water; cook, stirring, until brown, 5 minutes. Remove from heat.',
                                
                                'Turn oven up to 450°. Sprinkle flour on a flat surface. Press dough into a 15-inch 
                                circle or 10-in x 16-in rectangle. Top with squash, onion, spinach, cheese and thyme. 
                                Dust stone or inverted sheet with cornmeal; place pizza on it. Bake until crust is crispy
                                and cheese melts, 10 to 12 minutes.'],
                  cooking_time: { total: 60, prep: 20, cook: 40, inactive: 00 },
                  serves:       4,
                  difficulty:   'Easy',
                  rating:       [3.3, 4.0, 'forks'],
                  image_file:   'butternut_squash_pizza.jpg',
                  comment:      'This was good, a bit dry like some others said. I might use a mixture of cheese next 
                                time. I did add a drizzle of balsamic reduction, as someone suggested, which was delicious 
                                but didn\'t help much with the dryness. I cooked the squash along with the onion in the 
                                pan instead of using the oven, and we cooked it on a pizza stone on the grill.',
                  source:       'http://www.epicurious.com/recipes/food/views/Butternut-Squash-Spinach-and-Goat-Cheese-Pizza-367831'
                ),
      Recipe.new( id:           3,
                  name:         'Couscous Salad with Roasted Vegetables and Chickpeas',
                  category:     'Entree/Vegetarian',
                  ingredients:{ 'pound carrots, sliced 3/4 inch thick on the diagonal' => 1,
                                'head cauliflower (3 pounds), cored and cut into florets' => 1,
                                'teaspoons ground cumin' => 1.5,
                                'tablespoons olive oil' => 3,
                                'cup whole-wheat couscous' => 1,
                                'tablespoon lemon zest' => 1,
                                'cup fresh lemon juice (from 3 lemons)' => 0.5,
                                'can (15 ounces) chickpeas, rinsed and drained' => 1,
                                'scallions, thinly sliced' => 6,
                                'ounces baby arugula' => 5,
                                'coarse salt' => 'to taste',
                                'ground pepper' => 'to taste'
                              },
                  preparation: ['Preheat oven to 450 degrees. Place carrots and cauliflower on a rimmed baking 
                                sheet; toss with cumin and 2 tablespoons oil. Season with salt and pepper. Spread 
                                half the vegetables on a second baking sheet. Roast until browned and tender, 
                                25 to 30 minutes, rotating sheets and tossing halfway through. Cool to room temperature.',
                                
                                'Meanwhile, in a medium saucepan, bring 1 1/4 cups salted water to a boil. Stir in 
                                couscous; cover and remove from heat. Let stand until tender, 5 minutes. Fluff with 
                                a fork; set aside to cool, uncovered.',
                                
                                'Make dressing: In a small bowl, whisk together lemon zest and juice and remaining 
                                tablespoon of oil; season with salt and pepper.',
                                
                                'In a large bowl, combine roasted vegetables with couscous, chickpeas, and scallions. 
                                Place arugula on a serving platter, and drizzle with 1 tablespoon dressing. Add 
                                remaining dressing to couscous mixture, and toss; serve over arugula.'],
                  cooking_time: { total: 60, prep: 30, cook: 30, inactive: 0 },
                  serves:       4,
                  difficulty:   'Easy',
                  rating:       [3.9, 4.0, 'stars'],
                  image_file:   'couscous_salad_with_vegetables.jpg',
                  comment:      'This was excellent! Modified it for what I had on hand (broccoli in place of 
                                cauliflower, white kidney beans for chick peas), but we thought it was fantastic. 
                                Dressing is divine (added some garlic to mine). Thanks for a wonderful vegetarian 
                                recipe!!!',
                  source:       'http://www.marthastewart.com/315061/couscous-salad-with-roasted-vegetables-a#Quick%20Main-Course%20Salad%20Recipes|/274818/quick-main-course-salad-recipes/@center/276948/dinner-tonight|315061'
                ),
      Recipe.new( id:           4,
                  name:         'Salmon Puttanesca Over Spinach With Buttered Gnocchi',
                  category:     'Entree/Seafood',
                  ingredients:{ 'salmon fillets (1 1/2 lb; skin removed)' => 4,
                                'teaspoon salt' => 0.125,
                                'teaspoon pepper' => 0.125,
                                'tablespoons extra-virgin olive oil, divided' => 2,
                                'cups pasta sauce with olives' => 1.5,
                                '(9-oz) bag fresh spinach leaves' => 1,
                                'cup reduced-sodium chicken broth' => 1,
                                '(16-oz) package gnocchi pasta' => 1,
                                'tablespoon garlic butter' => 1,
                                'tablespoon shredded Parmesan cheese' => 1,
                                'teaspoon paprika, optional' => 0.25
                              },
                  preparation: ['Preheat large sauté pan on medium-high 2-3 minutes. Season both sides of fish 
                                with salt and pepper (wash hands). Place 1 tablespoon oil in pan, then add fish; 
                                cook 4 minutes on each side.',

                                'Place broth in shallow microwave-safe baking dish; separate gnocchi and stir into 
                                broth. Top with butter, cheese, and paprika; cover tightly with plastic wrap.',

                                'Microwave on HIGH 10 minutes or until tender and most of liquid is absorbed. Let 
                                stand 5 minutes; do not remove plastic during stand time. Stir and serve.',

                                'Pour pasta sauce over fish. Reduce heat to medium; cover and simmer 8-10 minutes 
                                or until fish separates easily.',

                                'Meanwhile, preheat second large sauté pan on medium-high 2-3 minutes. Place 1 
                                tablespoon oil in pan, then add spinach and cover. Cook and stir 2-3 minutes or 
                                until spinach is wilted and tender. Serve fish and sauce over spinach.'],
                  cooking_time: { total: 30, prep: 10, cook: 20, inactive: 0 },
                  serves:       4,
                  difficulty:   'Easy',
                  rating:       ['no rating available'],
                  image_file:   'salmon_puttanesca.jpg',
                  comment:      'This was delicious, or my name isn\'t Ted Zickelman.',
                  source:       'http://www.publix.com/recipes-planning/aprons-simple-meals/salmon-puttanesca-over-spinach-with-buttered-gnocchi'
                ),
      Recipe.new( id:           5,
                  name:         'Classic Beef Stroganoff',
                  category:     'Entree/Vegetarian with Substitutions',
                  ingredients:{ 'pounds beef sirloin steak, 1/2 inch thick' => 1.5,
                                'ounces fresh mushrooms, sliced (2 1/2 cups)' => 8,
                                'medium onions, thinly sliced' => 2,
                                'garlic clove, finely chopped' => 1,
                                'cup butter' => 0.25,
                                'cups Progresso™ beef flavored broth (from 32-ounce carton)' => 1.5,
                                'teaspoon salt' => 0.5,
                                'teaspoon Worcestershire sauce' => 1,
                                'cup Gold Medal™ all-purpose flour' => 0.25,
                                'cups sour cream' => 1.5,
                                'cups hot cooked egg noodles' => 3
                              },
                  preparation: ['Cut beef across grain into about 1 1/2x1/2-inch strips.',

                                'Cook mushrooms, onions and garlic in butter in 10-inch skillet over medium heat, 
                                stirring occasionally, until onions are tender; remove from skillet.',

                                'Cook beef in same skillet until brown. Stir in 1 cup of the broth, the salt and 
                                Worcestershire sauce. Heat to boiling; reduce heat. Cover and simmer 15 minutes.',

                                'Stir remaining 1/2 cup broth into flour; stir into beef mixture. Add onion mixture; 
                                heat to boiling, stirring constantly. Boil and stir 1 minute. Stir in sour cream; heat 
                                until hot (do not boil). Serve over noodles.'],
                  cooking_time: { total: 38, prep: 20, cook: 18, inactive: 0 },
                  serves:       6,
                  difficulty:   'Easy',
                  rating:       [4.3, 5.0, 'stars'],
                  image_file:   'beef_stroganoff.jpg',
                  comment:      'I made this for dinner tonight and let me tell you, it is AMAZING. If you like Noodles 
                                and Company Steak Stroganoff, this is identical! I used stew meat because it was all 
                                we had, but as long as you let it cook on low heat for longer to allow it to get tender, 
                                it doesn\'t make a difference! I am so impressed with this recipe. I\'ll definitely be 
                                making it again!',
                  source:       'http://www.bettycrocker.com/recipes/classic-beef-stroganoff/c17a904f-a8f6-48ae-bedb-5b301a8ea317'
                ),
      Recipe.new( id:           6,
                  name:         'Warm-Your-Soul Tuscan Soup',
                  category:     'Soup/Vegetarian with Substitutions',
                  ingredients:{ 'lb mild Italian sausage' => 1,
                                'oz chicken broth' => 32,
                                'oz evaporated or condensed milk (Do NOT use sweetened condensed milk.)' => 12,
                                'red potatoes, diced' => 6,
                                'large onion, chopped' => 0.5,
                                'tablespoons Italian seasoning (or a blend of dried basil, oregano, rosemary, thyme, marjoram, sage)' => 2,
                                'Salt or garlic salt' => 'to taste',
                                'Pepper' => 'to taste',
                                'optional: spinach or kale, chopped' => 1
                              },
                  preparation: ['Cook the sausage in the same large stew pot you\'ll use to cook the soup, drain excess 
                                fat and return sausage to pot.',

                                'Add the chicken broth and evaporated milk and bring to a boil.',

                                'Reduce heat so soup simmers. Add potatoes, onions, seasoning, salt and pepper.',

                                'The soup is done when the potatoes are cooked through, about 20-30 minutes. If using 
                                spinach or kale, add during the last few minutes of cooking.'],
                  cooking_time: { total: 40, prep: 15, cook: 25, inactive: 0 },
                  serves:       8,
                  difficulty:   'Easy',
                  rating:       ['no rating available'],
                  image_file:   'tuscan_soup.jpg',
                  comment:      'Delicious!  Made it tonight.  I used turkey sausage instead of regular, and didn\'t drain 
                                off the fat.  Altogether awesome, though I think it needed a bit more salt.  Fair warning 
                                - you will have a LOT of soup.  We gave some of it away to a neighbor and still have about 
                                3-4 servings left.',
                  source:       'http://www.cozi.com/live-simply/recipes/warm-your-soul-tuscan-soup'
                ),
      Recipe.new( id:           7,
                  name:         'Gnocchi with Squash and Sweet Summer Corn',
                  category:     'Entree/Vegetarian',
                  ingredients:{ '(16 ounce) package vacuum-sealed gnocchi (from the dried pasta aisle)' => 1,
                                'tablespoons unsalted butter, divided' => 3,
                                'small zucchini, very thinly sliced' => 1,
                                'small yellow squash, very thinly sliced' => 1,
                                'cup sweet yellow corn kernels (from about two ears)' => 1,
                                'small cloves garlic, peeled and minced' => 2,
                                'squeeze of lemon' => 1,
                                'ounces soft goat cheese' => 2,
                                'tablespoon finely chopped flat leaf parsley' => 1,
                                'salt' => 'to taste',
                                'pepper' => 'to taste'
                              },
                  preparation: ['Bring a pot of water to a boil. Add gnocchi and cook for 2 minutes. Drain and 
                                return to the pot. Toss warm gnocchi with 1 tablespoon butter and set aside.',

                                'Meanwhile, melt remaining 2 tablespoons of butter in a large, flat-sided sauté 
                                pan over medium heat. Cook the butter until it begins to bubble and turn light 
                                golden brown, about 3 minutes. Be careful not to let it burn. Add the zucchini, 
                                squash, corn, and garlic and sauté until warmed through, another 2 - 3 minutes.',

                                'Turn off heat and stir the cooked gnocchi into the vegetables. Add a generous 
                                squeeze of lemon juice, and salt and pepper to taste. Transfer to a serving bowl 
                                and top with small hunks of goat cheese and a sprinkling of chopped parsley.'],
                  cooking_time: { total: 45, prep: 30, cook: 15, inactive: 0 },
                  serves:       2,
                  difficulty:   'Easy',
                  rating:       ['no rating available'],
                  image_file:   'gnocchi_with_sweet_corn.jpg',
                  comment:      'I made this the other night, with a couple modifications, and it was incredible! 
                                I forgot to get goat cheese, so I added a couple tablespoons of cream to bulk up 
                                the pan sauce a little. For some reason the gnocchi I had already had a somewhat 
                                lemony flavor, so I left out the lemon too. So easy, fast, delicious, and versatile. 
                                And most importantly, does not heat up the house.',
                  source:       'http://www.thekitchn.com/recipe-sweet-corn-squash-gnocchi-recipes-from-the-kitchn-173851'
                ),
      Recipe.new( id:           8,
                  name:         'Zucchini, Bacon, and Gruyère Quiche',
                  category:     'Entree',
                  ingredients:{ '(9-inch) refrigerated pie dough round (from a 15-oz package)' => 1,
                                'lb sliced bacon, coarsely chopped' => 0.25,
                                'medium zucchini (3/4 lb total), halved lengthwise, then cut crosswise into 1/8-inch-thick slices' => 2,
                                'teaspoon salt' => 0.5,
                                'cup heavy cream' => 0.75,
                                'cup whole milk' => 0.75,
                                'teaspoon black pepper' => 0.25,
                                'large eggs' => 3,
                                'oz Gruyère, coarsely grated (1 cup)' => 2
                              },
                  preparation: ['Put oven rack in middle position and preheat oven to 450°F.',

                                'Fit pie dough into pie plate and lightly prick all over. Bake according to package 
                                instructions, then transfer crust in pie plate to a rack.',

                                'Reduce oven temperature to 350°F.',

                                'While crust bakes, cook bacon in a 12-inch heavy skillet over moderately high heat, 
                                stirring occasionally, until just crisp, about 6 minutes. Transfer bacon with a slotted 
                                spoon to a paper-towel-lined plate, reserving fat in skillet.',

                                'Add zucchini and 1/4 teaspoon salt to fat in skillet and sauté over moderately high heat, 
                                stirring frequently, until zucchini is tender and starting to brown, about 5 minutes, then 
                                transfer with slotted spoon to a plate.',

                                'Heat cream, milk, pepper, and remaining 1/4 teaspoon salt in a 1- to 2-quart saucepan 
                                until mixture reaches a bare simmer, then remove from heat.',

                                'Whisk together eggs in a large heatproof bowl, then gradually whisk in hot cream mixture 
                                until combined. Stir in bacon, zucchini, and cheese and pour into piecrust. Bake until 
                                filling is just set, 25 to 30 minutes. Transfer quiche in pan to rack to cool slightly, 
                                about 20 minutes.'],
                  cooking_time: { total: 50, prep: 10, cook: 10, inactive: 30 },
                  serves:       6,
                  difficulty:   'Easy',
                  rating:       [3.5, 4.0, 'forks'],
                  image_file:   'quiche.jpg',
                  comment:      'This has a tender, flavorful custard and great balance of flavors. Brought it to a pot 
                                luck and it was the first thing gone in about 10 minutes. My zucchini- disdaining husband 
                                couldn\'t get enough of it and has already asked me to make it again.',
                  source:       'http://www.epicurious.com/recipes/food/views/Zucchini-Bacon-and-Gruyere-Quiche-233259'
                ),
      Recipe.new( id:           9,
                  name:         'Pumpkin-Pecan Pie with Whiskey Butter Sauce',
                  category:     'Dessert',
                  ingredients:{ '** PUMPKIN FILLING **' => 0,
                                'cup cooked pumpkin purée' => 1,
                                'cup firmly packed light brown sugar' => 0.25,
                                'tablespoons sugar' => 2,
                                'large egg, beaten until frothy' => 1,
                                'tablespoon heavy cream' => 1,
                                'tablespoon unsalted butter, softened' => 1,
                                'tablespoon vanilla extract' => 1,
                                'teaspoon salt' => 0.25,
                                'teaspoon ground cinnamon' => 0.25,
                                'pinch of ground allspice' => 1,
                                'pinch of ground nutmeg' => 1,
                                '** PECAN SYRUP **' => 0,
                                'cup sugar' => 0.75,
                                'cup dark corn syrup' => 0.75,
                                'small eggs' => 2,
                                'tablespoons unsalted butter, melted' => 1.5,
                                'teaspoons vanilla extract' => 2,
                                'pinch salt' => 1,
                                'pinch ground cinnamon' => 1,
                                'cup pecan pieces  ' => 0.75,
                                '** WHISKEY BUTTER SAUCE **' => 0,
                                'tablespoons unsalted butter (1/2 stick)' => 4,
                                'cup sugar' => 0.33,
                                'large egg' => 1,
                                'tablespoon very hot water' => 0.5,
                                'cup heavy cream' => 0.25,
                                'cup bourbon whiskey' => 0.25
                              },
                  preparation: ['Pumpkin Filling: Combine all the ingredients thoroughly in a medium bowl; set aside.',

                                'Pecan Syrup: Combine all the ingredients thoroughly in a medium bowl; set aside.',

                                'Assembly: Preheat the oven to 325°F. Grease an 8-inch springform cake pan.',

                                'Roll out the dough on a lightly floured work surface to 3/16 inch. Very lightly flour 
                                the top of the dough and fold it into quarters. Carefully place the dough in the greased 
                                cake pan. Press firmly in place and trim the edges. Chill for 15 minutes.',

                                'Spoon the Pumpkin Filling into the pan, spreading evenly to distribute. Gently pour 
                                the Pecan Syrup on top. Bake until a knife inserted in the center comes out clean, 
                                about 1 hour and 45 minutes. Cool and serve with Whiskey Butter Sauce.',

                                'Whiskey Butter Sauce: Melt the butter in the top of a double boiler set over gently simmering water.',

                                'Beat the sugar and egg in a small bowl until blended. Stir the egg mixture into the 
                                butter. Add the hot water and stir until the mixture coats the back of a spoon, about 
                                7 minutes. Remove from the double boiler and let cool to room temperature. Stir in 
                                the cream and whiskey.'],
                  cooking_time: { total: 120, prep: 15, cook: 15, inactive: 90 },
                  serves:       8,
                  difficulty:   'Medium',
                  rating:       [3.7, 4.0, 'forks'],
                  image_file:   'pecan_pumpkin_pie.jpg',
                  comment:      'i made this for thanksgiving, and wow, what a hit! even grandma was piling on the whiskey 
                                sauce. i left it optional on the side, in case people thought it might be too strong, and 
                                people were putting it on their other desserts! i used my own pumpkin puree, and drained 
                                it over paper towels and a colander for about a half hour before it was needed so the 
                                pumpkin filling would stand up.',
                  source:       'http://www.epicurious.com/recipes/food/views/Pumpkin-Pecan-Pie-with-Whiskey-Butter-Sauce-104141'
                ),
      Recipe.new( id:           10,
                  name:         'Guacamole',
                  category:     'Dip/Side',
                  ingredients:{ 'avocados - peeled, pitted, and mashed' => 3,
                                'lime, juiced' => 1,
                                'teaspoon salt' => 1,
                                'cup diced onion' => 0.5,
                                'tablespoons chopped fresh cilantro' => 3,
                                'roma (plum) tomatoes, diced' => 2,
                                'teaspoon minced garlic' => 1,
                                'pinch ground cayenne pepper (optional)' => 1
                              },
                  preparation: ['In a medium bowl, mash together the avocados, lime juice, and salt. Mix in onion, 
                                cilantro, tomatoes, and garlic. Stir in cayenne pepper. Refrigerate 1 hour for 
                                best flavor, or serve immediately.'],
                  cooking_time: { total: 10, prep: 10, cook: 0, inactive: 0 },
                  serves:       4,
                  difficulty:   'Easy',
                  rating:       [4.8, 5.0, 'stars'],
                  image_file:   'guacamole.jpg',
                  comment:      'This is THE guacamole recipe. I am now officially the guacamole maker of my 
                                friends and family - at their request. MY ADVICE: mix up the avocado, salt (measure 
                                to preference) and lime juice as your base. TASTE THIS!! Once the base is to your 
                                liking, the rest of the ingredients will just be added flavors.',
                  source:       'http://allrecipes.com/recipe/guacamole/detail.aspx'
                ),
      Recipe.new( id:           11,
                  name:         'Butternut Squash and Cheddar Bread Pudding',
                  category:     'Casserole/Vegetarian',
                  ingredients:{ 'pounds peeled seeded butternut squash, cut into 1-inch cubes (about 6 cups)' => 2,
                                'tablespoons olive oil, divided' => 3,
                                'teaspoons coarse kosher salt plus additional for sprinkling' => 1.5,
                                'large eggs' => 7,
                                'cups half and half' => 2.25,
                                'tablespoons dry white wine' => 6,
                                'teaspoons Dijon mustard' => 1.5,
                                'day-old baguette (do not remove crust), torn into 1-inch pieces (about 10 cups)' => 1,
                                'cup chopped shallots (about 4 large)' => 1,
                                'bunches Tuscan kale (about 1 pound), ribs removed, kale coarsely chopped' => 2,
                                'ounces extra-sharp cheddar cheese, coarsely grated' => 8
                              },
                  preparation: ['Preheat oven to 400°F. Toss squash with 1 tablespoon oil on rimmed baking sheet. 
                                Sprinkle with coarse salt; bake until squash is tender, turning with spatula occasionally, 
                                20 to 25 minutes.',

                                'Whisk eggs in large bowl. Add half and half, wine, mustard, and 1 1/2 teaspoons coarse salt; 
                                whisk to blend. Add baguette pieces; fold gently into egg mixture. Let soak 30 minutes, 
                                stirring occasionally.',

                                'Meanwhile, heat 2 tablespoons oil in large pot over medium-high heat. Add shallots and sauté 
                                until soft, stirring frequently, about 5 minutes. Add kale; cover and cook 2 minutes. Uncover 
                                and stir until kale is wilted but still bright green, about 5 minutes (kale will be a bit crunchy).',

                                'Reduce oven temperature to 350°F. Generously butter 13x9x2-inch baking dish. Using slotted spoon, 
                                transfer half of bread from egg mixture to prepared baking dish, arranging to cover most of dish. 
                                Spoon half of kale over bread. Spoon half of squash over bread and kale; sprinkle with half of 
                                cheese. Repeat with remaining bread, kale, squash, and cheese. Pour remaining egg mixture over 
                                bread pudding.',

                                'Cover bread pudding with foil. Bake 20 minutes. Remove foil; bake uncovered until custard is 
                                set and bread feels springy to touch, about 20 minutes longer.',

                                'Preheat broiler; broil pudding until cheese browns slightly, about 2 minutes. Cool 5 minutes 
                                and serve.'],
                  cooking_time: { total: 95, prep: 30, cook: 45, inactive: 40 },
                  serves:       6,
                  difficulty:   'Medium',
                  rating:       [4.2, 5.0, 'stars'],
                  image_file:   'butternut_squash_bread_pudding.jpg',
                  comment:      'I love this recipe and it is a request at every Thanksgiving since its debut. At the same time 
                                I curse the many steps it takes to get to the final product. Bottom line, it delicious!', 
                  source:       'http://www.bonappetit.com/recipe/butternut-squash-and-cheddar-bread-pudding'
                ),
      Recipe.new( id:           12,
                  name:         'Black-Eyed Pea Hummus',
                  category:     'Dip/Side/Vegetarian',
                  ingredients:{ '1 head of garlic' => 1,
                                'tablespoons olive oil, divided' => 5,
                                '15-ounce can black-eyed peas, rinsed' => 1,
                                'tablespoon fresh lemon juice' => 1,
                                'pinch of cayenne pepper' => 1,
                                'tablespoon chopped fresh chives' => 1,
                                'tablespoon fresh flat-leaf parsley' => 1,
                                'Kosher salt' => 'to taste',
                                'freshly ground pepper' => 'to taste'
                              },
                  preparation: ['Preheat oven to 425°. Rub off papery skins from outside of garlic and trim 1/2-inch 
                                off top. Place on a sheet of foil, drizzle with 1 Tbsp. oil, and season with salt and 
                                pepper. Wrap up in the foil, place on a baking sheet, and roast until tender, 30–35 
                                minutes; let cool slightly.',
                                
                                'Squeeze garlic cloves into a food processor. Add black-eyed peas, lemon juice, and 
                                cayenne, and pulse until a coarse purée forms. With motor running, drizzle in remaining 
                                4 Tbsp. oil. Transfer purée to a medium bowl and mix in chives and parsley; season with 
                                salt and pepper.'],
                  cooking_time: { total: 50, prep: 10, cook: 40, inactive: 30 },
                  serves:       4,
                  difficulty:   'Easy',
                  rating:       [3.0, 5.0, 'stars'],
                  image_file:   'black_eyed_pea_hummus.jpg',
                  comment:      'Very tasty and healthy. All my family loved it. Will definitely made it again and 
                                use it for special occasions.',
                  source:       'http://www.bonappetit.com/recipe/black-eyed-pea-hummus'
                ),
      Recipe.new( id:           13,
                  name:         'Asian Salad with Salmon',
                  category:     'Entree/Seafood',
                  ingredients:{ 'skinless salmon fillets (6 to 8 ounces each)' => 2,
                                'cup rice vinegar' => 0.25,
                                'tablespoons toasted sesame oil' => 3,
                                'tablespoons honey' => 2,
                                'small head napa cabbage, shredded (about 4 cups)' => 0.5,
                                'small head red cabbage, shredded (about 4 cups)' => 1,
                                'large carrots, shredded' => 2,
                                'cup finely chopped sweet onion, such as Vidalia' => 0.25,
                                'cup sliced or chopped toasted almonds' => 0.5,
                                'cup coarsely chopped dried apricots' => 0.5,
                                'Coarse salt' => 'to taste',
                                'ground pepper' => 'to taste'
                              },
                  preparation: ['Heat broiler. Place salmon fillets on a rimmed baking sheet; season generously with salt 
                                and pepper. Broil until fish is just cooked through, 8 to 10 minutes. When cool enough to 
                                handle, cut into large chunks.',

                                'In a large bowl, whisk together vinegar, oil, and honey; season with salt and pepper. Set 
                                aside 2 tablespoons dressing.',

                                'To remaining dressing, add napa and red cabbage, carrots, onion, almonds, and apricots; 
                                toss.',

                                'Divide salad among four plates; top with salmon. Drizzle reserved dressing over salmon.'],
                  cooking_time: { total: 25, prep: 15, cook: 10, inactive: 0 },
                  serves:       4,
                  difficulty:   'Easy',
                  rating:       [3.1, 5.0, 'stars'],
                  image_file:   'asian_salad_salmon.jpg',
                  comment:      'This is a very good recipe, but the dressing, as written, was very bland. I fixed it up 
                                with a few squirts of sriracha and a shake of low-sodium soy sauce. With that, it was 
                                much better.',
                  source:       'http://www.marthastewart.com/317632/asian-salad-with-salmon#Quick%20Main-Course%20Salad%20Recipes|/274818/quick-main-course-salad-recipes/@center/276948/dinner-tonight|317632'
                ),
      Recipe.new( id:           14,
                  name:         'Biscuit Pot Pie',
                  category:     'Entree',
                  ingredients:{ 'tablespoons unsalted butter' => 2,
                                'cloves garlic, minced' => 2,
                                'small onion, diced' => 1,
                                'carrots, peeled and diced' => 3,
                                'ribs celery, diced' => 2,
                                'cup all-purpose flour' => 0.33,
                                'cups chicken broth' => 2,
                                'cups milk' => 1.5,
                                'teaspoon thyme' => 0.5,
                                'cups shredded chicken' => 3.5,
                                'cup frozen peas' => 0.5,
                                'cups all-purpose flour' => 2,
                                'teaspoon baking powder' => 2,
                                'teaspoon sugar' => 1,
                                'teaspoon baking soda' => 0.5,
                                'teaspoon salt' => 0.5,
                                'tablespoons (1/2 stick) unsalted butter, cut into cubes' => 4,
                                'cup buttermilk' => 0.75,
                                'Kosher salt' => 'to taste',
                                'freshly ground black pepper' => 'to taste'
                              },
                  preparation: ['Line a baking sheet with parchment paper or a silicone baking mat; set aside.',

                                'In a large bowl, combine flour, baking powder, sugar, baking soda and salt. Add cold 
                                butter, using your fingers to work the butter into the dry ingredients until it resembles 
                                coarse crumbs. Add buttermilk and stir using a rubber spatula until a soft dough forms.',

                                'Working on a lightly floured surface, knead the dough 3-4 times until it comes together. 
                                Using a rolling pin, roll the dough into a 10- by 7-inch rectangle, about 1-inch thick. 
                                Cut out 6-8 rounds using a 3-inch biscuit or cookie cutter. Place biscuits onto the 
                                prepared baking sheet; set aside in the refrigerator.',

                                'Preheat oven to 400 degrees F. Lightly oil a 9x13 baking dish or coat with nonstick spray.',

                                'To make the filling, melt butter in a large skillet over medium high heat. Add garlic, 
                                onion, carrots and celery, and cook, stirring occasionally, until tender, about 3-4 
                                minutes. Whisk in flour until lightly browned, about 1 minute. Gradually whisk in chicken 
                                broth, milk and thyme, and cook, whisking constantly, until slightly thickened, about 1-2 
                                minutes. Stir in chicken and peas; season with salt and pepper, to taste.',

                                'Add chicken mixture to prepared baking dish. Place into oven and bake for 15 minutes. 
                                Top with prepared biscuits and bake until tops are golden brown, an additional 10-12 minutes. 
                                Let cool 5 minutes before serving.'],
                  cooking_time: { total: 70, prep: 30, cook: 40, inactive: 0 },
                  serves:       4,
                  difficulty:   'Medium',
                  rating:       ['no rating available'],
                  image_file:   'biscuit_pot_pie.jpg',
                  comment:      'I just finished eating this and it is SO yummy! I love that it’s from scratch, since we 
                                try to eat “real/whole foods”. Boiled 2 chicken breasts and used the onion, garlic, celery, 
                                but subbed a bag of organic mixed veggies for the carrots. This will become a go-to meal 
                                for sure.',
                  source:       'http://damndelicious.net/2013/12/23/biscuit-pot-pie/'
                ),
      Recipe.new( id:           15,
                  name:         'Sweet Potato Black Bean Enchiladas',
                  category:     'Entree/Vegetarian/Gluten-Free',
                  ingredients:{ 'cup light vegetable broth' => 1,
                                'tablespoon arrowroot starch dissolved in a little cold water' => 1,
                                'generous cup chopped roasted green chiles -- hot or mild ' => 1,
                                'cloves garlic, minced' => 2,
                                'teaspoon cumin or chili powder, hot or mild, to taste' => 1,
                                '15-oz can organic black beans, rinsed, drained' => 1,
                                'cloves garlic, minced' => 3,
                                'lime, juiced' => 1,
                                'heaping cups cooked sweet potatoes, smashed a bit, but still chunky' => 2,
                                'cup chopped roasted green chiles' => 0.5,
                                'teaspoon ground cumin' => 0.5,
                                'teaspoon chili powder, or curry, mild or spicy, as you prefer' => 0.5,
                                'tablespoons chopped fresh cilantro' => 2,
                                'tablespoons light olive oil or vegetable oil, as needed' => 2,
                                'white or yellow corn tortillas' => 8,
                                'sea salt' => 'to taste',
                                'black pepper' => 'to taste',
                                'shredded Monterey Jack cheese, or GF vegan cheese' => 'if desired'
                              },
                  preparation: ['Preheat your oven to 350ºF. Choose a baking dish that would hold 8 enchiladas.',

                                'Make your Quickie Green Chile Sauce by combining the broth, dissolved arrowroot, green 
                                chiles, garlic and spices in a sauce pan and heating over medium-high heat. Bring to a 
                                high simmer. Simmer until thickened. Taste test. Set aside.',

                                'In the meantime, using a mixing bowl, combine the drained black beans with minced garlic 
                                and lime juice. Toss to coat the beans and set aside.',

                                'In a separate bowl combine the lightly smashed sweet potatoes with the chopped green 
                                chiles; add the spices. Season with sea salt and pepper.',

                                'Pour about 1/4 cup of the Quickie Green Chile Sauce into the bottom of the baking dish.',

                                'Grab a skillet and heat a dash of oil. Lightly cook the corn tortillas to soften them - 
                                one at a time - as you stuff each one.',

                                'Lay the first hot tortilla in the sauced baking dish; wet it with the sauce. Spoon 1/8 
                                of the sweet potato mixture down the center. Top with 1/8 of the black beans.',

                                'Wrap and roll the tortilla to the end of the baking dish. Repeat for the remaining 
                                tortillas. Top with the rest of the sauce. If you like, top with a sprinkle of shredded 
                                Monterey Jack cheese or vegan cheese.',

                                'Bake for 20 to 25 minutes, until the enchiladas are piping hot and the sauce is bubbling 
                                around the edges.'],
                  cooking_time: { total: 95, prep: 30, cook: 25, inactive: 0 },
                  serves:       4,
                  difficulty:   'Medium',
                  rating:       ['no rating available'],
                  image_file:   'sweet_potato_black_bean_enchiladas.jpg',
                  comment:      'This recipe was AMAZING. I cooked two sweet potatoes in the micro for 6min and cubed 
                                them up with the spices. I used the garlic to cook with some cubed chicken tenderloins 
                                (3). Used canned salsa verde & nonfat beans w/chilies already in them and I layered the 
                                ingredients and made an enchilada pie for my husband and I. Can\'t wait to eat leftovers 
                                for lunch tomorrow! YUM!',
                  source:       'http://glutenfreegoddess.blogspot.com/2006/10/sweet-potato-black-bean-enchiladas.html'
                ),
      Recipe.new( id:           16,
                  name:         'Squash-Apple Turnovers',
                  category:     'Entree/Vegetarian',
                  ingredients:{ 'teaspoons olive oil' => 2,
                                'cup minced onion' => 0.5,
                                'cups (1/4-inch) diced peeled butternut squash' => 2,
                                'cup (1/4-inch) diced peeled Jonagold apple (about 1/2 pound)' => 1,
                                'teaspoon kosher salt' => 0.5,
                                'teaspoon freshly ground black pepper' => 0.25,
                                'cup crumbled goat cheese' => 0.25,
                                'teaspoons chopped fresh thyme' => 2,
                                '(11.3-ounce) can refrigerated dinner roll dough' => 1,
                                'tablespoon honey mustard' => 1,
                                'teaspoons water' => 2,
                                'tablespoons 1% low-fat milk' => 2,
                                'cooking spray' => 'available'
                              },
                  preparation: ['Preheat oven to 375°.',

                                'Heat olive oil in a large skillet over medium-high heat. Add onion; sauté for 3 minutes. 
                                Add squash; sauté for 5 minutes. Add apple; cook 6 minutes or until squash and apple are 
                                tender. Stir in salt and pepper. Remove from heat, and cool to room temperature. Gently 
                                stir in cheese and thyme.',

                                'Separate dough into 8 pieces. Roll each portion into a 5-inch circle on a lightly 
                                floured surface. Combine mustard and 2 teaspoons water in a small bowl. Lightly brush 
                                top sides of dough circles with mustard mixture. Spoon about 2 tablespoons squash mixture 
                                onto half of each circle, leaving a 1/4-inch border. Fold dough over filling; press edges 
                                together with a fork to seal. Brush milk over dough. Place turnovers 1 inch apart on a 
                                baking sheet lightly coated with cooking spray. Bake at 375° for 19 minutes or until 
                                golden brown. Serve warm.'],
                  cooking_time: { total: 60, prep: 20, cook: 40, inactive: 0 },
                  serves:       4,
                  difficulty:   'Easy',
                  rating:       [3.0, 5.0, 'stars'],
                  image_file:   'squash_apple_turnovers.jpg',
                  comment:      'For all you people who got turned off by the dough, you just got the incorrect type. 
                                I was standing in the aisle at the grocery store, and I took a chance on some pre-made 
                                pie crust, and they came out fantastic. I love this recipe!! I did make one small change 
                                in that I chose an herbed goat cheese, but I actually think it added to the overall dish.',
                  source:       'http://www.myrecipes.com/recipe/squash-apple-turnovers'
                ),
      Recipe.new( id:           17,
                  name:         'Pan-Roasted Cod and Fennel With Spinach Couscous',
                  category:     'Entree/Seafood',
                  ingredients:{ 'tablespoons olive oil' => 2,
                                'bulb fennel, cut into wedges' => 1,
                                'medium red onion, cut into wedges' => 1,
                                'cup dry white wine' => 0.25,
                                'pounds skinless cod or some other firm white fish fillets' => 1.5,
                                'teaspoon ground coriander' => 0.5,
                                'cup couscous' => 1,
                                'cups flat-leaf spinach (1 1/2 ounces), chopped' => 2,
                                'kosher salt' => 'to taste',
                                'black pepper' => 'to taste'
                              },
                  preparation: ['Heat oven to 400° F. Heat the oil in a large ovenproof skillet over medium-high heat. 
                                Add the fennel, onion, and ¼ teaspoon each salt and pepper. Cook, tossing frequently, 
                                until beginning to soften, 8 to 10 minutes. Add the wine.',

                                'Season the cod with the coriander and ¼ teaspoon each salt and pepper and nestle in 
                                the vegetables. Transfer the skillet to oven and roast until the cod is opaque throughout, 
                                8 to 12 minutes.',

                                'Meanwhile, cook the couscous according to the package directions. Fluff with a fork 
                                and fold in the spinach. Serve with the cod and vegetables.'],
                  cooking_time: { total: 30, prep: 10, cook: 20, inactive: 20 },
                  serves:       4,
                  difficulty:   'Easy',
                  rating:       [3.0, 5.0, 'stars'],
                  image_file:   'cod_couscous.jpg',
                  comment:      'This was a great recipe! Everything blended so well together. Next time, I will saute 
                                the spinach a little before adding to the couscous. I was very careful not to overcook 
                                the fish. It was a tasty and healthy dish....a keeper!',
                  source:       'http://www.realsimple.com/food-recipes/browse-all-recipes/pan-roasted-cod-fennel-couscous'
                ),
      Recipe.new( id:           18,
                  name:         'Fannie Farmer\'s Classic Baked Macaroni & Cheese',
                  category:     'Side/Flood of Pleasure, Followed Immediately by Cardiac Arrest',
                  ingredients:{ '(8 ounce) package macaroni' => 1,
                                'tablespoons butter' => 4,
                                'tablespoons flour' => 4,
                                'cup milk' => 1,
                                'cup cream' => 1,
                                'teaspoon salt' => 0.5,
                                'fresh ground black pepper' => 'to taste',
                                'cups cheddar cheese, shredded good quality' => 2,
                                'cup breadcrumbs, buttered' => 0.5
                              },
                  preparation: ['Preheat oven to 400°F.',

                                'Cook and drain macaroni according to package directions; set aside.',

                                'In a large saucepan melt butter. Add flour mixed with salt and pepper, using a whisk 
                                to stir until well blended. Pour milk and cream in gradually; stirring constantly. 
                                Bring to boiling point and boil 2 minutes (stirring constantly). Reduce heat and cook 
                                (stirring constantly) 10 minutes. Add shredded cheddar little by little and simmer an 
                                additional 5 minutes, or until cheese melts.',

                                'Turn off flame.',

                                'Add macaroni to the saucepan and toss to coat with the cheese sauce.',

                                'Transfer macaroni to a buttered baking dish. Sprinkle with breadcrumbs. Bake 20 minutes 
                                until the top is golden brown.'],
                  cooking_time: { total: 40, prep: 20, cook: 20, inactive: 0 },
                  serves:       8,
                  difficulty:   'Medium',
                  rating:       [5.0, 5.0, 'stars'],
                  image_file:   'mac_n_cheese.jpg',
                  comment:      'I am a culinary student at Brigham Young University and I even love this simple 
                                recipe! It is wonderfully and classically delicious!',
                  source:       'http://www.food.com/recipe/fannie-farmers-classic-baked-macaroni-cheese-135350'
                ),
      Recipe.new( id:           19,
                  name:         'Traditional Egg Nog',
                  category:     'Beverage',
                  ingredients:{ '12 eggs, separated' => 12,
                                'cups milk' => 6,
                                'cups heavy cream' => 2,
                                'cups kentucky bourbon' => 2,
                                'cup brandy' => 1,
                                'cups sugar' => 1.5,
                                'tablespoon vanilla extract' => 1,
                                'teaspoons nutmeg' => 1.5,
                                'teaspoon cinnamon' => 1
                              },
                  preparation: ['In a large bowl with a mixer, beat the egg yolks together with the sugar for approx 
                                10 minutes (you want the mixture to be firm and the colour of butter).',

                                'Very slowly, add in the bourbon and brandy - just a little at a time. When the 
                                bourbon and brandy have been added, allow the mixture to cool in the fridge for at 
                                least 4 hours.',

                                'Once the mixture is fully chilled, stir in the milk. Stir in 1 & 1/2 teaspoons of 
                                ground nutmeg,one teaspoon of cinnamon and 1 tablespoon of vanilla extract.',

                                'In a separate bowl, beat the cream with a mixer on high speed until the cream forms 
                                stiff peaks.',

                                'In another bowl, beat the egg whites until stiff peaks form.',

                                'Gently fold the egg white mixture into the egg yolk mixture.',

                                'Gently fold the cream into the egg mixture. Voila!'],
                  cooking_time: { total: 270, prep: 90, cook: 0, inactive: 180 },
                  serves:       10,
                  difficulty:   'Easy',
                  rating:       [4.0, 4.0, 'forks'],
                  image_file:   'eggnog.jpg',
                  comment:      'Absolutely delicious. I happened upon this recipe 5 days ago and decided to use 
                                it for Christmas. Will be a regular part of our Christmas meal from here on out.',
                  source:       'http://www.epicurious.com/recipes/member/views/ADAMS-OLD-FASHIONED-EGG-NOG-50113914'
                ),
      Recipe.new( id:           20,
                  name:         'Quick Thai Chicken Soup',
                  category:     'Entree/Soup',
                  ingredients:{ 'cloves garlic' => 4,
                                '2-inch piece fresh ginger' => 1,
                                'tablespoons vegetable oil' => 2,
                                'small onion, thinly sliced' => 1,
                                'medium red bell pepper, seeded and thinly sliced' => 1,
                                'medium carrot, sliced' => 1,
                                '6-8 oz boneless chicken breast, cut into bite-sized pieces' => 1,
                                '15-oz chicken broth' => 1,
                                '15-oz coconut milk' => 1,
                                'baby bok choy heads, sliced diagonally' => 4
                              },
                  preparation: ['Finely chop or grate the garlic and ginger. Heat vegetable oil in a heavy-bottomed 
                                pot over medium-high heat. Add the ginger and garlic and saute for about one minute.',

                                'Add the onion, pepper and carrot and saute one minute longer. Add the chicken and 
                                cook 5 minutes, turning, until browned.',

                                'Add the chicken broth and coconut milk and bring to a boil. Add the baby bok choy 
                                and cook a few minutes until the bok choy is tender. Serve in soup bowls, or over 
                                rice.'],
                  cooking_time: { total: 40, prep: 20, cook: 20, inactive: 0 },
                  serves:       4,
                  difficulty:   'Easy',
                  rating:       ['no rating available'],
                  image_file:   'thai_chicken_soup.jpg',
                  comment:      'This is a tasty, inexpensive meal to make, especially if you are watching your 
                                budget and can\'t afford to go out for Thai food! I used tofu and kale instead 
                                of chicken and bok choy. I would add a squeeze of lime, some red chili flakes 
                                and maybe some basil leaves if you have them. It\'s good, but needs a little bit 
                                of zing to it. :-)',
                  source:       'http://www.cozi.com/live-simply/recipes/quick-thai-chicken-soup'
                )
    ]
  end

  def self.find(id)
    all.find do |recipe|
      recipe.id == id
    end
  end

  def self.search(pattern)
    all.select do |recipe|
      recipe.name.downcase.include?(pattern.downcase) ||
        recipe.category.downcase.include?(pattern.downcase) ||
        recipe.source.downcase.include?(pattern.downcase) ||
        recipe.ingredients.keys.include?(pattern.downcase)
    end
  end

#   def strung(ingredients)
#     ingredients.each do |key, value| 
#       puts "#{value} #{key}"
#     end
#   end

end
