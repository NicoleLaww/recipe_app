# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


## USERS 
user1 = User.create({ name: 'Taylor Swift', email: 'swift13@gmail.com', password: 'Fearless', username: 'TayTay13'})
user2 = User.create ({ name: 'Jane Smith', email: 'jane.smith123@gmail.com', password: 'Jane123', username: 'itsJaneS'})
user3 = User.create ({ name: 'Olivia Jack', email: 'olivia.jack@gmail.com', password: 'Olivia123', username: 'OliviaJ$'})
user4 = User.create({ name: 'Drake Champagne', email: 'd.champagne@gmail.com', password: 'passionfruit', username: 'Champagnepapi'})
user5 = User.create ({ name: 'Billie Eilish', email: 'bloshhh@hotmail.com', password: 'finneas$', username: 'Wherearetheavacados'})
user6 = User.create ({ name: 'Jessie Reyez', email: 'jessiereyez@shaw.ca', password: 'sailaway', username: 'JReyez'})
user7 = User.create({ name: 'Kendrick Lamar', email: 'oklama123@gmail.com', password: 'poeticjustice333', username: 'Oklama'})
user8 = User.create ({ name: 'Lady Tootoo', email: 'to2twotoo@outlook.com', password: '1margaret', username: 'Too2'})
user9 = User.create ({ name: 'Pooh Bear', email: 'poobare@outlook.com', password: 'pigletiscool', username: 'Ilikehoney'})
user10 = User.create ({ name: 'Kitty Kat', email: 'ilovecats24@gmail.com', password: 'micearenice', username: 'Catman!'})

## RECIPES 
recipe1 = Recipe.create({ title: 'Chocolate Chip Muffins',
gluten_free: false,
vegan: true,
vegetarian: true,
breakfast: true,
kosher: false,
peanut_free: true,
halal: true,
dinner: false,
lunch: false,
dessert: false,
appetizer: false,
photo: '/images/Vegan-Chocolate-Chip-Muffins.png',
time: 35,
number_of_servings: 12,
instructions: "1. Preheat your oven to 400F (200C).\n2. Line 12 wells of a muffin pan with paper liners or lightly grease the pan. For larger muffins line 8 -9 wells.\n3.In a large bowl whisk together the flour, sugar, baking powder, and salt.\n4. Pour in the plant-based milk, oil, lemon juice or apple cider vinegar, and vanilla and gently stir to combine. Don't overmix, lumps are totally cool. Overmixing can result in the muffins not rising properly.\n5. Lastly add the chocolate chips and gently fold them in.\n6. Divide the batter evenly among the prepared muffin tin.\n7. Bake 20 to 25 minutes until lightly golden on top and a toothpick inserted into the center comes out clean. (If you are making 8 - 9 large muffins they may take an extra minute or two).\n8. Let cool in the pan.\n9. Store at room temperature for 3 - 4 days or frozen in an air-tight container. ",
country: 'Canada',
description: "1 bowl, 9 ingredients, the best easy vegan chocolate chip muffin recipe is here! These muffins are tender, fluffy, sweet, loaded with chocolate chips, and so tasty no one will know they are vegan!",
user_id: 1,
ingredients: "1.5 cups all-purpose flour\n0.75 cup white sugar\n2 teaspoons baking powder\n0.5 teaspoon salt\n0.75 cup plant-based milk, (such as soy or oat)\n0.5 cup light oil, (such as canola or vegetable)\n1 tablespoon lemon juice or apple cider vinegar,(makes the muffins fluffy, you will not taste it)\n1 tablespoon vanilla extract\n1 cup vegan chocolate chips"})

recipe2 = Recipe.create({ title: 'Raspberry Curd Lemon Cookies',
gluten_free: true,
vegan: false,
vegetarian: false,
breakfast: true,
kosher: false,
peanut_free: true,
halal: false,
dinner: false,
lunch: false,
dessert: true,
appetizer: false,
photo: '/images/Raspberry-Curd-Lemon-Cookies.png',
time: 240,
number_of_servings: 16,
instructions: "Raspberry curd:\n1. Add the raspberries to a small saucepan and cook them over medium heat until they've completely softened and released their juices.\n2. Pass the softened raspberries though a sieve, placed over a small bowl or jug, to remove the seeds and other solids. You should get about 80g or about ⅓ cup of raspberry juices.\n3. Return the raspberry juices to the saucepan and add the lemon juice. Set aside until needed.\n4. In a heat-proof bowl, whisk together the sugar, egg, egg yolk and salt until slightly fluffy and paler in colour (no need to use a stand or a hand mixer for this, just whisk them briefly together by hand with a balloon whisk).\n5. Cook the raspberry-lemon juice mixture over medium heat until it only just comes to a boil (but don't allow too much moisture to evaporate, remove it from the heat as soon as it comes to a boil).\n6. Add the hot raspberry juices to the egg-sugar mixture in a slow drizzle, whisking constantly until you've added all the juices. Tip: This tempers the egg and egg yolk, and prevents your raspberry curd from splitting or curdling when you cook it.\n7. Return the mixture to the saucepan and cook it over low heat with constant stirring until thickened so that it thickly coats the back of a spoon or spatula. This should take about 4-6 minutes. Don't allow the raspberry curd to come to a boil – you shouldn't see any bubbles forming.\n8. Once thickened, remove from the heat and stir in the butter until it's fully melted.\n9. Add the vanilla and mix well.\n10. Pour the finished raspberry curd into a bowl or heat-proof container and cover it with a sheet of plastic wrap/cling film. Make sure that the plastic wrap/cling film is in direct contact with the surface of the raspberry curd – this will prevent skin formation.\n11. Allow it to cool completely to room temperature, then chill it in the fridge for at least 1 hour or until thickened. (You can also prepare the raspberry curd a day or two in advance and keep it in the fridge until needed.)\n

Lemon cookie dough:\n1. Add the sugar and lemon zest to a large bowl, and use your fingertips to rub the zest into the sugar. Tip: This helps to release more essential oils from the zest, and it will make your cookies even more lemony and aromatic.\n2. Add the melted butter, eggs, lemon juice and vanilla, and whisk well until combined.\n3. In a separate bowl, whisk together the gluten free flour blend, xanthan gum, baking powder and salt, and add them to the wet ingredients.\n4. Mix with a wooden spoon or a rubber spatula until you get a smooth, batter-like cookie dough. Tip: At this stage, the cookie dough will really be more like a batter – it will be very loose, soft and sticky, bordering on runny. That's how it should be. Don't add more flour!\n5. Chill the cookie dough in the fridge for at least 2 hours before proceeding to the next step. You can also keep it in the fridge overnight if you want to bake the cookies the next day. Tip: In addition to firming up the cookie dough into something you can actually handle and shape into balls, chilling also ensures that the cookies won’t melt into puddles during baking.\n

Assembling & baking the cookies:\n1. Adjust the oven rack to the middle position, pre-heat the oven to 350ºF (180ºC) and line two large baking sheets with parchment/baking paper. Tip: You will bake the cookies in two batches, so you can line two baking sheets if you have them on hand. Otherwise, just re-use the same baking sheet, but make sure to cool it completely before you place the next batch of unbaked cookies onto it.\n2. Use a 2-tablespoon cookie or ice cream scoop to scoop out a portion of the cookie dough.\n3. Drop it directly into a bowl of powdered/icing sugar and roll it around until it’s evenly coated. The sugar coating will allow you to handle the cookie dough without it sticking, so you can roll it between your palms to form a perfectly round ball.\n4. Repeat with the rest of the cookie dough, you should get 16 cookies in total.\n5. Place the sugar-coated cookie dough balls onto the lined baking sheets, with plenty of space between them, about 8 per baking sheet (as the cookies will spread during baking).\n6. Use a ½-tablespoon measuring spoon to make an indent in the centre of each cookie dough ball (make sure that you press only halfway through each cookie dough ball, not all the way through).\n7. Fill the cookies with about 1 (generous) teaspoon of raspberry curd. Tip: Note that you won't use up all of the raspberry curd. You can use the remainder to serve with the cookies, or you can spread it on bread or cakes, swirl it into frosting or similar.\n8. Bake one baking sheet at a time at 350ºF (180ºC) for 9-12 minutes or until the cookies have spread and cracked around the edges and the raspberry curd centre is slightly puffed up but NOT visibly bubbling (this will ensure that it stays beautifully smooth and creamy).\n9. While the first batch of cookies is baking, keep the second baking sheet with the cookies in the fridge until needed. The cookies will be very soft and delicate immediately out of the oven. Allow them to cool on the baking sheet for about 5-10 minutes before transferring them to a wire rack to cool completely. These raspberry curd lemon cookies are amazing both warm and at room temperature, but I find them to be at their very best when they're chilled from the fridge.\n

Storage:\nThe gluten free raspberry curd lemon cookies keep well in an airtight container at room temperature for 2-3 days, or in the fridge for up to about 1 week. You will have some raspberry curd left over – you can store it in an airtight container in the fridge for up to about 10 days.",
country: 'Canada',
description: "This raspberry curd recipe is based on the super creamy, silky-smooth lemon curd that I used in the lemon curd cookies, with a few simple tweaks, such as swapping some of the lemon juice for raspberries and reducing the amount of sugar to give a raspberry curd that has just the right balance between sweet and refreshingly tart. Making the cookie dough is incredibly straightforward: you just combine all the wet and all the dry ingredients separately, and then mix them together into a fairly loose, runny, batter-like cookie dough.",
user_id: 1,
ingredients: "Raspberry curd:\n150 g (1¼ cups) fresh or frozen raspberries\n30 g (2 tbsp) freshly squeezed lemon juice\n75 g (¼ cup + 2 tablespoons) caster/superfine or granulated sugar\n1 US large/UK medium egg, room temperature\n1 US large/UK medium egg yolk, room temperature\n¼ tsp salt\n55 g (½ stick) unsalted butter, cubed\n½ tsp vanilla bean paste (or 1 tsp vanilla extract)\n

Lemon cookies:\n150 g (¾ cup) caster/superfine or granulated sugar\nzest of 2 lemons (Ideally, use organic unwaxed lemons.)\n115 g (1 stick) unsalted butter, melted and cooled until warm\n2 US large/UK medium eggs, room temperature\n30 g (2 tbsp) freshly squeezed lemon juice\n½ tsp vanilla bean paste (or 1 tsp vanilla extract)\n240 g (2 cups) plain gluten free flour blend (I used Doves Farm Freee plain gluten free flour that doesn't have any xanthan gum added. You can also mix your own gluten free flour blend using this recipe. Note that for this homemade blend, 1 cup = 150g, so ideally use a digital food scale for best results.)\n½ tsp xanthan gum (Omit if your gluten free flour blend already contains xanthan gum.)\n½ tsp baking powder\n¼ tsp salt\n90 g (¾ cup) powdered/icing sugar, for rolling the cookies before baking"})

recipe3 = Recipe.create({ title: 'Vegan Waffles',
gluten_free: false,
vegan: true,
vegetarian: true,
breakfast: true,
kosher: false,
peanut_free: true,
halal: false,
dinner: false,
lunch: false,
dessert: false,
appetizer: false,
photo: '/images/Vegan-Waffles.png',
time: 30,
number_of_servings: 6,
instructions: "1. Mix the nut milk, vanilla extract and the lemon juice or ACV together in a small bowl/measuring cup. Set aside for about 5 minutes - this will make the vegan buttermilk.\n2. In a large bowl, sift the flour, baking powder and salt. The sifting really helps to make the waffles fluffy.\n3. Add the sugar, melted butter/oil, buttermilk mixture into the dry ingredients and using a spatula, gently mix the batter until JUST combined. It's okay (and normal) to have some lumps. The batter should be thick and scoopable.\n4. Turn on and preheat your waffle maker according to which done level that you want. I set mine to about medium because I like mine crisp and golden but also very fluffy.\n5. Using a ½ cup (125mL) measuring cup, scoop out some batter and pour/spread into the middle of the greased waffle maker. You don’t need to push it to the edges. Close and let cook until the steam has COMPLETELY stopped from the waffle maker. Don't open it before the steam is finished!\n6. Remove each waffle and place on a baking sheet in your oven or toaster oven on warm or 200F/95C to keep warm and crispy until finished with the entire batter. Continue with the rest of the batter.\n7. Serve with your favourite toppings like blueberry sauce and enjoy!",
country: 'Canada',
description: "If there’s one thing I know for sure, I LOVE waffles. Waffles of all kinds. I love sweet waffles. I love savoury waffles. Gluten free waffles. Even Mac and cheese waffles! Today I'm finally sharing some super easy, fluffy, classic buttermilk vegan waffles. These are honestly my absolute favourite, and they're pantry friendly too! They have that ideal texture of crispy on the outside and fluffy on the inside, and they're meal prep perfect. I usually just double a batch and I'm good to go.", 
user_id: 1,
ingredients: "1 1/2 cups unsweetened soy or coconut milk, or any vegan milk\n2 teaspoons apple cider vinegar\n2 cups all-purpose flour, (240g)\n1 tablespoon baking powder\n1/2 teaspoon sea salt\n1 tablespoon brown sugar or maple syrup\n1/4 cup melted coconut oil or melted vegan butter\n1/2 teaspoon vanilla extract\nfruits to serve or a dollop of vegan whipped cream"})

recipe4 = Recipe.create({ title: 'Mini Lemon Blueberry Tarts',
gluten_free: false,
vegan: false,
vegetarian: true,
breakfast: false,
kosher: false,
peanut_free: true,
halal: false,
dinner: false,
lunch: false,
dessert: false,
appetizer: true,
photo: '/images/Mini-Blueberry-Lemon-Tarts-600x600.png',
time: 25,
number_of_servings: 24,
instructions: "\n1. Mix the nut milk, vanilla extract and the lemon juice or ACV together in a small bowl/measuring cup. Set aside for about 5 minutes - this will make the vegan buttermilk.\n2. In a large bowl, sift the flour, baking powder and salt. The sifting really helps to make the waffles fluffy.\n3. Add the sugar, melted butter/oil, buttermilk mixture into the dry ingredients and using a spatula, gently mix the batter until JUST combined. It's okay (and normal) to have some lumps. The batter should be thick and scoopable.\n4. Turn on and preheat your waffle maker according to which done level that you want. I set mine to about medium because I like mine crisp and golden but also very fluffy.\n5. Using a ½ cup (125mL) measuring cup, scoop out some batter and pour/spread into the middle of the greased waffle maker. You don’t need to push it to the edges. Close and let cook until the steam has COMPLETELY stopped from the waffle maker. Don't open it before the steam is finished!\n6. Remove each waffle and place on a baking sheet in your oven or toaster oven on warm or 200F/95C to keep warm and crispy until finished with the entire batter. Continue with the rest of the batter.\n7. Serve with your favourite toppings like blueberry sauce and enjoy!",
country: 'Canada',
description: "This Mini Lemon Blueberry Tarts recipe is so quick and easy, featuring a homemade ricotta cheese filling dolloped and baked into phyllo dough cups. Finished with fresh blueberries and ready in less than 30 minutes, it’s a gorgeous and elegant mini dessert that is great for serving a crowd.",
user_id: 2,
ingredients: "¾ cup whole milk ricotta cheese\n3 large eggs\n2 tablespoons honey or maple syrup\n¾ teaspoon vanilla extract\n1 tablespoon lemon zest from 1 large or 2 small lemons, freshly grated\n1 teaspoon lemon juice\nPinch of salt\n24 mini phyllo shells\n1 cup blueberries\nA handful of pomegranate seeds as garnish (optional)"})

recipe5 = Recipe.create({ title: 'Gnocchi',
gluten_free: false,
vegan: false,
vegetarian: true,
breakfast: false,
kosher: true,
peanut_free: true,
halal: false,
dinner: true,
lunch: false,
dessert: false,
appetizer: false,
photo: '/images/1070416-a1a6c982aaef4da3acfdda0ae7f3b87f.png',
time: 60,
number_of_servings: 4,
instructions: "1. Bring a large pot of salted water to a boil.\n2. Add potatoes and cook until tender but still firm, about 15 minutes.\n3. Drain, cool, and mash with a fork or potato masher.\n4. Combine 1 cup mashed potato, flour, and egg in a large bowl.\n5. Knead until dough forms a ball.\n6. Shape small portions of the dough into long snakes.\n7. On a floured surface, cut snakes into 1/2-inch pieces.\n8. Bring a large pot of lightly salted water to a boil.\n9. Drop in gnocchi and cook for 3 to 5 minutes or until gnocchi have risen to the top; drain and serve.",
country: 'Canada',
description: "Gnocchi is simple to make with just three ingredients: mashed potato, flour, and egg. This recipe is one my family has used for generations.",
user_id: 3,
ingredients: "2 potatoes, peeled\n2 cups all-purpose flour\n1 egg"})

recipe6 = Recipe.create({ title: '5 Ingredient Vegan Tacos',
gluten_free: false,
vegan: true,
vegetarian: true,
breakfast: false,
kosher: false,
peanut_free: true,
halal: false,
dinner: true,
lunch: true,
dessert: false,
appetizer: false,
photo: '/images/vegan-taco-v2.png',
time: 12,
number_of_servings: 6,
instructions: "1. Bring the water, taco seasoning, and onion to a boil.\n2. Add the TVP and reduce heat to low.\n3. Allow the TVP to absorb the liquid, and then add the drained black beans.\n4. Cover and cook on low heat, stirring often, until the tortillas are ready – be mindful to not let the filling scorch on the bottom of the pot.\n5. Check for seasoning – add salt if needed (taco seasonings all have different salt contents so use your judgment on how much to add).\n6. Heat up the tortillas in a pan with some oil, on a grill, or over your stove burner.\n7. Remove the filling from the heat and build your tacos using your favorite toppings.",
country: 'Mexico',
description: "This vegan taco recipe is just about as easy as it gets! Requiring only five ingredients and one pot, this is a great meal for camping, road trips, or a quick lunch.",
user_id: 4,
ingredients: "¾ cup water\n1 tablespoon taco seasoning\n½ tablespoon dried minced onions, or 1 teaspoon onion powder\n1 cup TVP, (textured vegetable protein)\n1 (15oz) can black beans, drained\nsalt to taste\n6 corn tortillas\nToppings:, avocado, cilantro, salsa, limes, red onion, etc., all optional"})

recipe7 = Recipe.create({ title: 'Easy Vegan Mushroom Tofu Stirfry',
gluten_free: true,
vegan: true,
vegetarian: true,
breakfast: false,
kosher: true,
peanut_free: true,
halal: false,
dinner: true,
lunch: true,
dessert: false,
appetizer: false,
photo: '/images/45D3A56E-D533-4DBC-B4DB-D633BC1F3BFB-1229x1536.png',
time: 20,
number_of_servings: 2,
instructions: "\n1. Heat a large frying pan with 1 tablespoon of oil.\n2. Add sliced mushrooms to the pan and cook until mushrooms are slightly browned.\n3. Add cubed tofu to pan and cook until edges are slightly browned.\n4. In a medium sized bowl, combine soy sauce and honey then add the mixture to the pan.\n5. In a small bowl, combine corn starch and water whisking until mixture is smooth and combined.\n6. Using a spatula, move mushrooms and tofu to the side of pan creating a well in the middle.\n7. Pour corn starch mixture inside the well and whisk over medium flame until sauce forms and thickens.\n8. Once sauce has thickened, combine sauce with mushrooms and tofu. 9. Serve with freshly chopped scallions.",
country: 'Canada',
description: "Easy vegan mushroom tofu stir fry with a honey soy sauce marinade. I absolutely love a good stir fry recipe, especially if it’s quick and easy to prepare. The fact that it is also vegan makes it a fantastic addition to my weekly dinner menu. The final dish can be served over a bed of butter or romaine lettuce (as shown in the photo) or white rice, couscous, cauliflower rice, quinoa or your grain of choice.",
user_id: 5,
ingredients: "8 oz sliced mushrooms\n12 oz extra firm tofu, drained and cut into cubes\n1/4 cup honey\n1/4 cup soy sauce\n1/4 cup water\n1 tablespoon corn starch"})

recipe8 = Recipe.create({ title: 'Mongolian Beef',
gluten_free: false,
vegan: false,
vegetarian: false,
breakfast: false,
kosher: false,
peanut_free: true,
halal: true,
dinner: true,
lunch: false,
dessert: false,
appetizer: false,
photo: '/images/Snapseed-3.png',
time: 10,
number_of_servings: 4,
instructions: "1. Combine the sliced beef with the sesame oil, soy sauce, garlic powder, white pepper and 2 tbsp corn flour.\n2. Allow to marinate in the fridge for at least an hour.\n3. Remove from the fridge and coat the marinated beef slices in the remaining 1/2 cup corn flour.\n4. Dust of any excess.\n5. Heat the vegetable oil in a pan over a high heat and fry the slices of beed for around 30 seconds to 1 min on each side. The beef should have a crispy coating.\n6. Once fried, remove from the heat and set aside.\n7. For the sauce, add the vegetable oil, ginger garlic paste and red chillies over a medium to high heat.\n8. Mix for a few mins until the chillies sizzle.\n9. Then add the soy sauce and brown sugar.\n10. Mix and boil on high heat for 3-4 mins.\n11. After boiling, reduce the heat and toss in the beef slices until well coated.\n12. Simmer for a few mins. Garnish with spring onion and roasted sesame seeds. Serve and enjoy!",
country: 'Mongolia',
description: "Below is my recipe for Mongolian beef. Be sure to try it out and let me know what you think!",
user_id: 6,
ingredients: "1 lb Gafoor Pure Halal beef steak, cut in thin strips\n2 tsp sesame oil\n2 tsp soy sauce\n1 tsp garlic powder\n1 tsp white pepper\n1/2 cup corn flour (plus 2 tbsp corn flour)\n1/2 cup vegetable oil for frying the beef\nFor the sauce\n2 tbsp vegetable oil\n1 tbsp ginger garlic paste\n7 dried red chillies\n1/2 cup soy sauce\n4 tbsp brown sugar\nSpring onions and roasted sesame seeds to garnish"})

recipe9 = Recipe.create({ title: 'Best-Ever Candied Yams',
gluten_free: false,
vegan: false,
vegetarian: true,
breakfast: false,
kosher: false,
peanut_free: true,
halal: false,
dinner: true,
lunch: false,
dessert: false,
appetizer: true,
photo: '/images/hdm-candiedyams-14684-1564436432.png',
time: 115,
number_of_servings: 8,
instructions: "1. Preheat oven to 400°. Butter a medium baking dish.\n2. In a medium saucepan over medium heat, combine sugar, orange juice, butter, cinnamon stick, bourbon if using, nutmeg, and salt.\n3. Stir to combine and bring to a boil, then reduce to a simmer and cook until it has thickened slightly, about 10 minutes.\n4. When reduced, remove and discard cinnamon stick.\n5. Meanwhile, prep potatoes: Peel potatoes and slice into 1/2 rounds, then layer in prepared baking dish.\n6. Pour thickened syrup over potatoes and cover dish with aluminum foil.\n7. Bake 30 minutes, then remove foil and bake about 50 minutes to 1 hour more, basting with sauce every 15 minutes.\n8. Let cool slightly before serving.",
country: 'Canada',
description: "For many, candied yams are an indispensable part of the Thanksgiving meal, along with mashed potatoes and homemade cranberry sauce.  We agree! Though candied yams might be super sweet on their own, they're the perfect complement to a plateful of savory dishes. Our version gets an added kick from bourbon; once you try them, we guarantee you'll never want this dish without it!",
user_id: 7,
ingredients: "1/2 c. dark brown sugar\n1/2 c. orange juice\n3 tbsp. butter, plus more for pan\n1 cinnamon stick\n2 tbsp. bourbon (optional)\nPinch nutmeg\nPinch kosher salt\n5 medium yams (about 3 lb.)"})

recipe10 = Recipe.create({ title: 'Lemon Pepper Omelette',
gluten_free: false,
vegan: false,
vegetarian: true,
breakfast: true,
kosher: false,
peanut_free: true,
halal: false,
dinner: false,
lunch: false,
dessert: false,
appetizer: false,
photo: '/images/veggie-omelette-08.png',
time: 10,
number_of_servings: 2,
instructions: "1. Oil a pan with olive oil.\n2. Mix 2-3 eggs in a bowl.\n3. Add 2 tablespoons of water, season with salt and with lemon pepper (my favorite Lemon Pepper is from Trader Joe’s by the way).\n4. Pour the egg mix into your frying pan, and fold the eggs in half after the edges begin to form solid (around 2-3 min).\n5. Add cheese or any other filling of choice (such as chives, onion, avocado, or tomato) to the center of the pan, in the middle of the eggs.\n6. Fold the eggs in half. Flip to brown if necessary. And boom. You have yourself an omelette.",
country: 'Canada',
description: "This recipe is surprisingly quick. It shouldn’t take you more than  ten minutes. And it’s so easy I actually learned the recipe from an eight year old. She taught me while I was babysitting!",
user_id: 8,
ingredients: "2-3 eggs\nLemon Pepper\nSalt\nOlive Oil\nWater\nCheese (or whatever toppings of your choosing! Ex: chives, onion, goat cheese, american cheese, swiss cheese, avocado, tomato, green onions, bell peppers)"})

recipe11 = Recipe.create({ title: 'Best Banana Bread Recipe',
gluten_free: false,
vegan: false,
vegetarian: true,
breakfast: false,
kosher: false,
peanut_free: true,
halal: false,
dinner: true,
lunch: true,
dessert: true,
appetizer: false,
photo: '/images/BananaBread-18.png',
time: 70,
number_of_servings: 6,
instructions: "1. Preheat the oven to 350°F, and grease an 8×5-inch loaf pan with baking spray.\n

Dry Ingredients:\n1. Whisk the flour, baking powder, salt, and baking soda.\n

Wet Ingredients:\n1. Cream the coconut oil, applesauce, and sugar with a stand or hand mixer.\n2. Add the egg and vanilla and beat at medium speed until thick.\n3. Scrape down the sides of the bowl.\n

Combine:\n1. Add half of the dry ingredients and blend on low speed until combined.\n2. Pour in the remaining flour mixture and the mashed bananas and blend on low, ensuring you don’t overmix.\n

Bake:\n1. Pour the batter into the loaf pan and bake on the center rack for 45 to 50 minutes or until a toothpick comes out clean but moist.\n

Serve:\n1. Let the pan cool for at least 10 minutes, then turn it over to remove the loaf from the pan. The bread should be at room temperature before slicing to ensure it doesn’t fall apart.",
country: 'Canada',
description: "When I have ripe bananas on my counter, I always crave this moist banana bread recipe made healthier with applesauce in place of butter.",
user_id: 9,
ingredients: "Bananas: Mash three large, ripe bananas for 1 1/3 cups (11 ounces) of mashed bananas.\nFlour: You’ll need 1 ½ cups of all-purpose flour.\nBaking Powder and Baking Soda cause the bread to rise and makes it more tender.\nSalt improves the flavor and texture and balances the sweetness.\nCoconut Oil: Just two tablespoons of coconut oil adds some moisture while keeping the bread light.\nBrown Sugar: I used Lakanto monkfruit for a healthier option, but light brown sugar will also work.\nEgg: You’ll need one large egg.\nApplesauce: Unsweetened applesauce replaces the oil.\nVanilla Extract for flavor"})

recipe12 = Recipe.create({ title: 'Saucy Prawns',
gluten_free: false,
vegan: false,
vegetarian: false,
breakfast: false,
kosher: false,
peanut_free: true,
halal: true,
dinner: true,
lunch: true,
dessert: false,
appetizer: false,
photo: '/images/2023-09-08-09-58-53-PRUSk.png',
time: 45,
number_of_servings: 6,
instructions: "1. Marinate and cook prawns in garlic to oil.\n2. Boil with the remaining ingredients, and serve!",
country: 'South Africa',
description: "Yummy saucy prawns, great for lunch or dinner! Packed with loads of flavor.",
user_id: 10,
ingredients: "1 kg tiger prawns keep shell on -butterfly drain well\n1 tablespoon garlic crushed\n1 teaspoon chilli powder\n1 teaspoon ground green chillies\nSalt\n3 tablespoon Nandos peri peri sauce\n2 tablespoon lemon juice\n2 tablespoon olive oil\n½ cup fresh cream\n50g butter\n3 tablespoon Nandos bushveld braai (bbq) sauce\n2 teaspoon crushed garlic\nRed coloring\n2 tablespoon mayo\nAdd 2 prawns simmer till creamy\nGarnish with chopped dhania (coriander)\nServe with chips or savoury rice"})

recipe13 = Recipe.create({ title: 'Zucchini Slice',
gluten_free: false,
vegan: false,
vegetarian: false,
breakfast: true,
kosher: false,
peanut_free: true,
halal: false,
dinner: false,
lunch: true,
dessert: false,
appetizer: true,
photo: '/images/zucchini-slice-recipe-cooked-184271-1.png',
time: 45,
number_of_servings: 15,
instructions: "1. Preheat oven to 170C.\n2. Beat the eggs in a large bowl until combined.\n3. Add the flour and beat until smooth.\n4. Add zucchini, onion, bacon, cheese and oil and stir to combine.\n5. Grease and line a 30 x 20cm lamington pan.\n6. Pour into the prepared pan and bake in oven for 30 minutes or until cooked through.",
country: 'Australia',
description: "While the argument as to what is Australia’s national dish will always rage (is it roast lamb, green chicken curry or a barramundi burger)? One thing is for sure, zucchini slice is hands-down the national food of the home cook.",
user_id: 1,
ingredients: "5 Coles Australian Free Range Eggs\n150g (1 cup) Coles White Self Raising Flour, sifted\n375g zucchini, grated\n1 large onion, finely chopped\n200g rindless bacon, chopped\n1 cup grated cheddar cheese\n60ml (1/4 cup) vegetable oil"})

## FAVOURITES
favourite1 = Favourite.create ({ user_id: 1, recipe_id: 1 })
favourite2 = Favourite.create ({ user_id: 2, recipe_id: 2 })
favourite3 = Favourite.create ({ user_id: 3, recipe_id: 3 })
favourite4 = Favourite.create ({ user_id: 4, recipe_id: 4 })
favourite5 = Favourite.create ({ user_id: 5, recipe_id: 5 })
favourite6 = Favourite.create ({ user_id: 6, recipe_id: 6 })
favourite7 = Favourite.create ({ user_id: 7, recipe_id: 7 })
favourite8 = Favourite.create ({ user_id: 8, recipe_id: 8 })
favourite9 = Favourite.create ({ user_id: 9, recipe_id: 9 })
favourite10 = Favourite.create ({ user_id: 10, recipe_id: 10 })
favourite11 = Favourite.create ({ user_id: 1, recipe_id: 2 })
favourite12 = Favourite.create ({ user_id: 1, recipe_id: 3 })
favourite13 = Favourite.create ({ user_id: 1, recipe_id: 4 })
favourite14 = Favourite.create ({ user_id: 1, recipe_id: 5 })
favourite15 = Favourite.create ({ user_id: 1, recipe_id: 6 })
favourite16 = Favourite.create ({ user_id: 1, recipe_id: 7 })
favourite17 = Favourite.create ({ user_id: 1, recipe_id: 8 })
favourite18 = Favourite.create ({ user_id: 1, recipe_id: 9 })
favourite19 = Favourite.create ({ user_id: 1, recipe_id: 10 })
favourite20 = Favourite.create ({ user_id: 2, recipe_id: 10 })
favourite21 = Favourite.create ({ user_id: 1, recipe_id: 11 })
favourite22 = Favourite.create ({ user_id: 1, recipe_id: 12 })
favourite23 = Favourite.create ({ user_id: 1, recipe_id: 13 })

##REVIEWS
review1 = Review.create ({ user_id: 3, recipe_id: 1, comment: "Absolutely love this recipe!", rating: 4 })
review2 = Review.create ({ user_id: 2, recipe_id: 2, comment: "Excellent gluten-free option.", rating: 5 })
review3 = Review.create ({ user_id: 3, recipe_id: 3, comment: "Thanks for sharing!", rating: 4 })
review4 = Review.create ({ user_id: 4, recipe_id: 4, comment: "Such a good peanut-free appy, thanks for sharing!!", rating: 4 })
review5 = Review.create ({ user_id: 5, recipe_id: 5, comment: "Good simple dinner option.", rating: 5 })
review6 = Review.create ({ user_id: 6, recipe_id: 6, comment: "Super easy and quick!! Will be making again!", rating: 5 })
review7 = Review.create ({ user_id: 7, recipe_id: 7, comment: "Love it!", rating: 4 })
review8 = Review.create ({ user_id: 8, recipe_id: 8, comment: "So tasty!", rating: 5 })
review9 = Review.create ({ user_id: 9, recipe_id: 9, comment: "I make this recipe all the time, my kids love it!", rating: 4 })
review10 = Review.create ({ user_id: 10, recipe_id: 10, comment: "Nice, fast, and simple.", rating: 3 })
review11 = Review.create ({ user_id: 5, recipe_id: 1, comment: "Delicious!", rating: 4 })
review12 = Review.create ({ user_id: 10, recipe_id: 2, comment: "Marvelous!!!", rating: 5 })
review13 = Review.create ({ user_id: 10, recipe_id: 3, comment: "Would recommend everyone try this recipe!", rating: 5 })
review14 = Review.create ({ user_id: 10, recipe_id: 4, comment: "Mmmm so delicious.", rating: 4 })
review15 = Review.create ({ user_id: 10, recipe_id: 5, comment: "Would like some more direction.", rating: 2 })
review16 = Review.create ({ user_id: 10, recipe_id: 6, comment: "Not too bad.", rating: 3 })
review17 = Review.create ({ user_id: 10, recipe_id: 7, comment: "Tasty, thanks for sharing.", rating: 4 })
review18 = Review.create ({ user_id: 10, recipe_id: 8, comment: "I'm going to try this with my kids.", rating: 4 })
review19 = Review.create ({ user_id: 10, recipe_id: 9, comment: "Yummy!", rating: 5 })
review20 = Review.create ({ user_id: 7, recipe_id: 10, comment: "SO so so good!!!!", rating: 5 })
review21 = Review.create ({ user_id: 10, recipe_id: 1, comment: "Easy to follow.", rating: 4 })
review22 = Review.create ({ user_id: 9, recipe_id: 2, comment: "Great dessert!", rating: 5 })
review23 = Review.create ({ user_id: 2, recipe_id: 1, comment: "Too bland.", rating: 1 })
review24 = Review.create ({ user_id: 2, recipe_id: 3, comment: "Not a fan of this recipe.", rating: 1 })
review25 = Review.create ({ user_id: 3, recipe_id: 4, comment: "Fine, but have tried better recipes for this.", rating: 2 })
review26 = Review.create ({ user_id: 2, recipe_id: 5, comment: "Wouldn't recommend this recipe!", rating: 1 })
review27 = Review.create ({ user_id: 2, recipe_id: 6, comment: "Not good.", rating: 2 })
review28 = Review.create ({ user_id: 2, recipe_id: 7, comment: "Yuck!", rating: 1 })
review29 = Review.create ({ user_id: 2, recipe_id: 8, comment: "Semi-decent ish.", rating: 3 })
review30 = Review.create ({ user_id: 2, recipe_id: 9, comment: "Wouldn't suggest trying this!", rating: 1 })
review31 = Review.create ({ user_id: 2, recipe_id: 11, comment: "Yumm!", rating: 4 })
review32 = Review.create ({ user_id: 3, recipe_id: 12, comment: "Great recipe to use!", rating: 5 })
review33 = Review.create ({ user_id: 4, recipe_id: 13, comment: "Not good!", rating: 1 })
review34 = Review.create ({ user_id: 5, recipe_id: 11, comment: "Pretty great!", rating: 4 })
review35 = Review.create ({ user_id: 6, recipe_id: 12, comment: "Not bad at all.", rating: 4 })
review36 = Review.create ({ user_id: 7, recipe_id: 13, comment: "Ehh, could be improved.", rating: 3 })
review37 = Review.create ({ user_id: 8, recipe_id: 11, comment: "Pretty yummy.", rating: 4 })
review38 = Review.create ({ user_id: 9, recipe_id: 12, comment: "The perfect recipe to try!", rating: 5 })
review39 = Review.create ({ user_id: 10, recipe_id: 13, comment: "Love it!!", rating: 5 })


