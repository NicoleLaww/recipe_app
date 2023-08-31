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
photo: '/app/db/seed_assets/Vegan-Chocolate-Chip-Muffins.png',
time: 35,
number_of_servings: 12,
instructions: " Preheat your oven to 400F (200C). 2. Line 12 wells of a muffin pan with paper liners or lightly grease the pan. For larger muffins line 8 -9 wells. 3. In a large bowl whisk together the flour, sugar, baking powder, and salt. 4. Pour in the plant-based milk, oil, lemon juice or apple cider vinegar, and vanilla and gently stir to combine. Don't overmix, lumps are totally cool. Overmixing can result in the muffins not rising properly. 5. Lastly add the chocolate chips and gently fold them in. 6. Divide the batter evenly among the prepared muffin tin. 7. Bake 20 to 25 minutes until lightly golden on top and a toothpick inserted into the center comes out clean. (If you are making 8 - 9 large muffins they may take an extra minute or two). 8. Let cool in the pan. 9. Store at room temperature for 3 - 4 days or frozen in an air-tight container. ",
country: 'Canada',
description: "1 bowl, 9 ingredients, the best easy vegan chocolate chip muffin recipe is here! These muffins are tender, fluffy, sweet, loaded with chocolate chips, and so tasty no one will know they are vegan!",
user_id: 1,
ingredients: "1.5 cups all-purpose flour 
0.75 cup white sugar
2 teaspoons baking powder
0.5 teaspoon salt
0.75 cup plant-based milk, (such as soy or oat)
0.5 cup light oil, (such as canola or vegetable)
1 tablespoon lemon juice or apple cider vinegar,(makes the muffins fluffy, you will not taste it)
1 tablespoon vanilla extract
1 cup vegan chocolate chips"})

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
photo: '/app/db/seed_assets/Raspberry-Curd-Lemon-Cookies',
time: 240,
number_of_servings: 16,
instructions: "Raspberry curd: Add the raspberries to a small saucepan and cook them over medium heat until they've completely softened and released their juices. Pass the softened raspberries though a sieve, placed over a small bowl or jug, to remove the seeds and other solids. You should get about 80g or about ⅓ cup of raspberry juices. Return the raspberry juices to the saucepan and add the lemon juice. Set aside until needed. In a heat-proof bowl, whisk together the sugar, egg, egg yolk and salt until slightly fluffy and paler in colour (no need to use a stand or a hand mixer for this, just whisk them briefly together by hand with a balloon whisk). Cook the raspberry-lemon juice mixture over medium heat until it only just comes to a boil (but don't allow too much moisture to evaporate, remove it from the heat as soon as it comes to a boil). Add the hot raspberry juices to the egg-sugar mixture in a slow drizzle, whisking constantly until you've added all the juices. Tip: This tempers the egg and egg yolk, and prevents your raspberry curd from splitting or curdling when you cook it. Return the mixture to the saucepan and cook it over low heat with constant stirring until thickened so that it thickly coats the back of a spoon or spatula. This should take about 4-6 minutes. Don't allow the raspberry curd to come to a boil – you shouldn't see any bubbles forming. Once thickened, remove from the heat and stir in the butter until it's fully melted. Add the vanilla and mix well. Pour the finished raspberry curd into a bowl or heat-proof container and cover it with a sheet of plastic wrap/cling film. Make sure that the plastic wrap/cling film is in direct contact with the surface of the raspberry curd – this will prevent skin formation. Allow it to cool completely to room temperature, then chill it in the fridge for at least 1 hour or until thickened. (You can also prepare the raspberry curd a day or two in advance and keep it in the fridge until needed.) Lemon cookie dough: Add the sugar and lemon zest to a large bowl, and use your fingertips to rub the zest into the sugar. Tip: This helps to release more essential oils from the zest, and it will make your cookies even more lemony and aromatic. Add the melted butter, eggs, lemon juice and vanilla, and whisk well until combined. In a separate bowl, whisk together the gluten free flour blend, xanthan gum, baking powder and salt, and add them to the wet ingredients. Mix with a wooden spoon or a rubber spatula until you get a smooth, batter-like cookie dough. Tip: At this stage, the cookie dough will really be more like a batter – it will be very loose, soft and sticky, bordering on runny. That's how it should be. Don't add more flour! Chill the cookie dough in the fridge for at least 2 hours before proceeding to the next step. You can also keep it in the fridge overnight if you want to bake the cookies the next day. Tip: In addition to firming up the cookie dough into something you can actually handle and shape into balls, chilling also ensures that the cookies won’t melt into puddles during baking. Assembling & baking the cookies: Adjust the oven rack to the middle position, pre-heat the oven to 350ºF (180ºC) and line two large baking sheets with parchment/baking paper. Tip: You will bake the cookies in two batches, so you can line two baking sheets if you have them on hand. Otherwise, just re-use the same baking sheet, but make sure to cool it completely before you place the next batch of unbaked cookies onto it. Use a 2-tablespoon cookie or ice cream scoop to scoop out a portion of the cookie dough. Drop it directly into a bowl of powdered/icing sugar and roll it around until it’s evenly coated. The sugar coating will allow you to handle the cookie dough without it sticking, so you can roll it between your palms to form a perfectly round ball. Repeat with the rest of the cookie dough, you should get 16 cookies in total. Place the sugar-coated cookie dough balls onto the lined baking sheets, with plenty of space between them, about 8 per baking sheet (as the cookies will spread during baking). Use a ½-tablespoon measuring spoon to make an indent in the centre of each cookie dough ball (make sure that you press only halfway through each cookie dough ball, not all the way through). Fill the cookies with about 1 (generous) teaspoon of raspberry curd. Tip: Note that you won't use up all of the raspberry curd. You can use the remainder to serve with the cookies, or you can spread it on bread or cakes, swirl it into frosting or similar. Bake one baking sheet at a time at 350ºF (180ºC) for 9-12 minutes or until the cookies have spread and cracked around the edges and the raspberry curd centre is slightly puffed up but NOT visibly bubbling (this will ensure that it stays beautifully smooth and creamy). While the first batch of cookies is baking, keep the second baking sheet with the cookies in the fridge until needed. The cookies will be very soft and delicate immediately out of the oven. Allow them to cool on the baking sheet for about 5-10 minutes before transferring them to a wire rack to cool completely. These raspberry curd lemon cookies are amazing both warm and at room temperature, but I find them to be at their very best when they're chilled from the fridge. Storage: The gluten free raspberry curd lemon cookies keep well in an airtight container at room temperature for 2-3 days, or in the fridge for up to about 1 week. You will have some raspberry curd left over – you can store it in an airtight container in the fridge for up to about 10 days.",
country: 'Canada',
description: "Raspberry curd The first step in this recipe is making a homemade raspberry curd, which you can prepare a few days in advance and then store it in the fridge until needed. Just resist the temptation to eat it by the spoonful, otherwise there’ll be nothing left by the time you want to assemble and bake the cookies. This raspberry curd recipe is based on the super creamy, silky-smooth lemon curd that I used in the lemon curd cookies, with a few simple tweaks, such as swapping some of the lemon juice for raspberries and reducing the amount of sugar to give a raspberry curd that has just the right balance between sweet and refreshingly tart. The lemon cookie dough: This is the same cookie dough that I used in my lemon curd cookies. It’s based on my gluten free lemon crinkle cookie recipe – with a few extra tweaks. I increased the amount of butter in the cookie dough, both to make it more buttery and also because I wanted the cookies to spread out a bit more in the oven. At the same time, I reduced the amount of baking powder slightly, to better control the cracks that form as the cookies expand during baking. Making the cookie dough is incredibly straightforward: you just combine all the wet and all the dry ingredients separately, and then mix them together into a fairly loose, runny, batter-like cookie dough. Initially, the mixture will really look more like a batter than a cookie dough – but don’t panic! It needs to chill in the fridge for at least 2 hours, and then it will be firm enough to scoop and assemble the cookies. (You can also keep it in the fridge overnight and assemble the cookies the next day.)",
user_id: 2,
ingredients: "Raspberry curd:
150 g (1¼ cups) fresh or frozen raspberries
30 g (2 tbsp) freshly squeezed lemon juice
75 g (¼ cup + 2 tablespoons) caster/superfine or granulated sugar
1 US large/UK medium egg, room temperature
1 US large/UK medium egg yolk, room temperature
¼ tsp salt
55 g (½ stick) unsalted butter, cubed
½ tsp vanilla bean paste (or 1 tsp vanilla extract)

Lemon cookies:
150 g (¾ cup) caster/superfine or granulated sugar
zest of 2 lemons (Ideally, use organic unwaxed lemons.)
115 g (1 stick) unsalted butter, melted and cooled until warm
2 US large/UK medium eggs, room temperature
30 g (2 tbsp) freshly squeezed lemon juice
½ tsp vanilla bean paste (or 1 tsp vanilla extract)
240 g (2 cups) plain gluten free flour blend (I used Doves Farm Freee plain gluten free flour that doesn't have any xanthan gum added. You can also mix your own gluten free flour blend using this recipe. Note that for this homemade blend, 1 cup = 150g, so ideally use a digital food scale for best results.)
½ tsp xanthan gum (Omit if your gluten free flour blend already contains xanthan gum.)
½ tsp baking powder
¼ tsp salt
90 g (¾ cup) powdered/icing sugar, for rolling the cookies before baking"})

recipe3 = Recipe.create({ title: 'Vegan Waffles',
gluten_free: false,
vegan: true,
vegetarian: true,
breakfast: true,
kosher: false,
peanut_free: false,
halal: false,
dinner: false,
lunch: false,
dessert: false,
appetizer: false,
photo: '/app/db/seed_assets/Vegan-Waffles.png',
time: 30,
number_of_servings: 6,
instructions: "1. Mix the nut milk, vanilla extract and the lemon juice or ACV together in a small bowl/measuring cup. Set aside for about 5 minutes - this will make the vegan buttermilk. 2. In a large bowl, sift the flour, baking powder and salt. The sifting really helps to make the waffles fluffy. 3. Add the sugar, melted butter/oil, buttermilk mixture into the dry ingredients and using a spatula, gently mix the batter until JUST combined. It's okay (and normal) to have some lumps. The batter should be thick and scoopable. 4. Turn on and preheat your waffle maker according to which done level that you want. I set mine to about medium because I like mine crisp and golden but also very fluffy. 3. Using a ½ cup (125mL) measuring cup, scoop out some batter and pour/spread into the middle of the greased waffle maker. You don’t need to push it to the edges. Close and let cook until the steam has COMPLETELY stopped from the waffle maker. Don't open it before the steam is finished! 4. Remove each waffle and place on a baking sheet in your oven or toaster oven on warm or 200F/95C to keep warm and crispy until finished with the entire batter. Continue with the rest of the batter. 5. Serve with your favourite toppings like blueberry sauce and enjoy!",
country: 'Canada',
description: "If there’s one thing I know for sure, I LOVE waffles. Waffles of all kinds. I love sweet waffles. I love savoury waffles. Gluten free waffles. Even Mac and cheese waffles! Today I'm finally sharing some super easy, fluffy, classic buttermilk vegan waffles. These are honestly my absolute favourite, and they're pantry friendly too! They have that ideal texture of crispy on the outside and fluffy on the inside, and they're meal prep perfect. I usually just double a batch and I'm good to go.", 
user_id: 3,
ingredients: "1 1/2 cups unsweetened soy or coconut milk, or any vegan milk
2 teaspoons apple cider vinegar
2 cups all-purpose flour, (240g)
1 tablespoon baking powder
1/2 teaspoon sea salt
1 tablespoon brown sugar or maple syrup
1/4 cup melted coconut oil or melted vegan butter 
1/2 teaspoon vanilla extract
fruits to serve or a dollop of vegan whipped cream"})

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
photo: '/app/db/seed_assets/Mini-Blueberry-Lemon-Tarts-600x600.png',
time: 25,
number_of_servings: 24,
instructions: "1. Mix the nut milk, vanilla extract and the lemon juice or ACV together in a small bowl/measuring cup. Set aside for about 5 minutes - this will make the vegan buttermilk. 2. In a large bowl, sift the flour, baking powder and salt. The sifting really helps to make the waffles fluffy. 3. Add the sugar, melted butter/oil, buttermilk mixture into the dry ingredients and using a spatula, gently mix the batter until JUST combined. It's okay (and normal) to have some lumps. The batter should be thick and scoopable. 4. Turn on and preheat your waffle maker according to which done level that you want. I set mine to about medium because I like mine crisp and golden but also very fluffy. 3. Using a ½ cup (125mL) measuring cup, scoop out some batter and pour/spread into the middle of the greased waffle maker. You don’t need to push it to the edges. Close and let cook until the steam has COMPLETELY stopped from the waffle maker. Don't open it before the steam is finished! 4. Remove each waffle and place on a baking sheet in your oven or toaster oven on warm or 200F/95C to keep warm and crispy until finished with the entire batter. Continue with the rest of the batter. 5. Serve with your favourite toppings like blueberry sauce and enjoy!",
country: 'Canada',
description: "This Mini Lemon Blueberry Tarts recipe is so quick and easy, featuring a homemade ricotta cheese filling dolloped and baked into phyllo dough cups. Finished with fresh blueberries and ready in less than 30 minutes, it’s a gorgeous and elegant mini dessert that is great for serving a crowd.",
user_id: 4,
ingredients: "¾ cup whole milk ricotta cheese
3 large eggs
2 tablespoons honey or maple syrup
¾ teaspoon vanilla extract
1 tablespoon lemon zest from 1 large or 2 small lemons, freshly grated
1 teaspoon lemon juice
Pinch of salt
24 mini phyllo shells
1 cup blueberries
A handful of pomegranate seeds as garnish (optional)"})

recipe5 = Recipe.create({ title: 'Gnocchi',
gluten_free: false,
vegan: false,
vegetarian: true,
breakfast: false,
kosher: true,
peanut_free: false,
halal: false,
dinner: true,
lunch: false,
dessert: false,
appetizer: false,
photo: '/app/db/seed_assets/1070416-a1a6c982aaef4da3acfdda0ae7f3b87f.png',
time: 60,
number_of_servings: 4,
instructions: "Bring a large pot of salted water to a boil; add potatoes and cook until tender but still firm, about 15 minutes. Drain, cool, and mash with a fork or potato masher. Combine 1 cup mashed potato, flour, and egg in a large bowl. Knead until dough forms a ball. Shape small portions of the dough into long snakes. On a floured surface, cut snakes into 1/2-inch pieces. Bring a large pot of lightly salted water to a boil. Drop in gnocchi and cook for 3 to 5 minutes or until gnocchi have risen to the top; drain and serve.",
country: 'Canada',
description: "Gnocchi is simple to make with just three ingredients: mashed potato, flour, and egg. This recipe is one my family has used for generations.",
user_id: 5,
ingredients: "2 potatoes, peeled
2 cups all-purpose flour
1 egg"})

recipe6 = Recipe.create({ title: '5 Ingredient Vegan Tacos',
gluten_free: false,
vegan: true,
vegetarian: true,
breakfast: false,
kosher: false,
peanut_free: false,
halal: false,
dinner: true,
lunch: true,
dessert: false,
appetizer: false,
photo: '/app/db/seed_assets/vegan-taco-v2.png',
time: 12,
number_of_servings: 6,
instructions: "Bring the water, taco seasoning, and onion to a boil. Add the TVP and reduce heat to low. Allow the TVP to absorb the liquid, and then add the drained black beans. Cover and cook on low heat, stirring often, until the tortillas are ready – be mindful to not let the filling scorch on the bottom of the pot. Check for seasoning – add salt if needed (taco seasonings all have different salt contents so use your judgment on how much to add). Heat up the tortillas in a pan with some oil, on a grill, or over your stove burner. Remove the filling from the heat and build your tacos using your favorite toppings.",
country: 'Mexico',
description: "This vegan taco recipe is just about as easy as it gets! Requiring only five ingredients and one pot, this is a great meal for camping, road trips, or a quick lunch.",
user_id: 6,
ingredients: "¾ cup water
1 tablespoon taco seasoning
½ tablespoon dried minced onions, or 1 teaspoon onion powder
1 cup TVP, (textured vegetable protein)
1 (15oz) can black beans, drained
salt to taste
6 corn tortillas
Toppings:, avocado, cilantro, salsa, limes, red onion, etc., all optional"})

recipe7 = Recipe.create({ title: 'Easy Vegan Mushroom Tofu Stirfry',
gluten_free: true,
vegan: true,
vegetarian: true,
breakfast: false,
kosher: true,
peanut_free: false,
halal: false,
dinner: true,
lunch: true,
dessert: false,
appetizer: false,
photo: '/app/db/seed_assets/45D3A56E-D533-4DBC-B4DB-D633BC1F3BFB-1229x1536.png',
time: 20,
number_of_servings: 2,
instructions: "1. Heat a large frying pan with 1 tablespoon of oil. 2. Add sliced mushrooms to the pan and cook until mushrooms are slightly browned. 3. Add cubed tofu to pan and cook until edges are slightly browned. 4. In a medium sized bowl, combine soy sauce and honey then add the mixture to the pan. 5. In a small bowl, combine corn starch and water whisking until mixture is smooth and combined. 6. Using a spatula, move mushrooms and tofu to the side of pan creating a well in the middle. 7. Pour corn starch mixture inside the well and whisk over medium flame until sauce forms and thickens. 8. Once sauce has thickened, combine sauce with mushrooms and tofu. 9. Serve with freshly chopped scallions.",
country: 'Canada',
description: "Easy vegan mushroom tofu stir fry with a honey soy sauce marinade. I absolutely love a good stir fry recipe, especially if it’s quick and easy to prepare. The fact that it is also vegan makes it a fantastic addition to my weekly dinner menu. I like having a handful of meat free dishes on rotation to include in my weekly dinner menus, since it’s usually cost effective and as a single mom I’m often shopping and meal planning on a budget. You can easily swap the mushrooms for any of your favorite vegetables. Broccoli, cauliflower, zucchini and green beans would all make wonderful alternatives to mushrooms if that is what you prefer. The final dish can be served over a bed of butter or romaine lettuce (as shown in the photo) or white rice, couscous, cauliflower rice, quinoa or your grain of choice.",
user_id: 7,
ingredients: "8 oz sliced mushrooms
12 oz extra firm tofu, drained and cut into cubes
1/4 cup honey
1/4 cup soy sauce
1/4 cup water
1 tablespoon corn starch"})

recipe8 = Recipe.create({ title: 'Mongolian Beef',
gluten_free: false,
vegan: false,
vegetarian: false,
breakfast: false,
kosher: false,
peanut_free: false,
halal: true,
dinner: true,
lunch: false,
dessert: false,
appetizer: false,
photo: '/app/db/seed_assets/Snapseed-3.png',
time: 10,
number_of_servings: 4,
instructions: "Combine the sliced beef with the sesame oil, soy sauce, garlic powder, white pepper and 2 tbsp corn flour. Allow to marinate in the fridge for at least an hour. Remove from the fridge and coat the marinated beef slices in the remaining 1/2 cup corn flour. Dust of any excess. Heat the vegetable oil in a pan over a high heat and fry the slices of beed for around 30 seconds to 1 min on each side. The beef should have a crispy coating. Once fried, remove from the heat and set aside. For the sauce, add the vegetable oil, ginger garlic paste and red chillies over a medium to high heat. Mix for a few mins until the chillies sizzle. Then add the soy sauce and brown sugar. Mix and boil on high heat for 3-4 mins. After boiling, reduce the heat and toss in the beef slices until well coated. Simmer for a few mins. Garnish with spring onion and roasted sesame seeds. Serve and enjoy!",
country: 'Mongolia',
description: "Below is my recipe for Mongolian beef. Be sure to try it out and let me know what you think!",
user_id: 8,
ingredients: "1 lb Gafoor Pure Halal beef steak, cut in thin strips
2 tsp sesame oil
2 tsp soy sauce
1 tsp garlic powder
1 tsp white pepper
1/2 cup corn flour (plus 2 tbsp corn flour)
1/2 cup vegetable oil for frying the beef 

For the sauce
2 tbsp vegetable oil
1 tbsp ginger garlic paste
7 dried red chillies
1/2 cup soy sauce
4 tbsp brown sugar

Spring onions and roasted sesame seeds to garnish"})

recipe9 = Recipe.create({ title: 'Best-Ever Candied Yams',
gluten_free: false,
vegan: false,
vegetarian: true,
breakfast: false,
kosher: false,
peanut_free: false,
halal: false,
dinner: true,
lunch: false,
dessert: false,
appetizer: true,
photo: '/app/db/seed_assets/hdm-candiedyams-14684-1564436432.png',
time: 115,
number_of_servings: 8,
instructions: "Step 1 Preheat oven to 400°. Butter a medium baking dish. Step 2 In a medium saucepan over medium heat, combine sugar, orange juice, butter, cinnamon stick, bourbon if using, nutmeg, and salt. Stir to combine and bring to a boil, then reduce to a simmer and cook until it has thickened slightly, about 10 minutes. When reduced, remove and discard cinnamon stick. Step 3 Meanwhile, prep potatoes: Peel potatoes and slice into 1/2 rounds, then layer in prepared baking dish. Pour thickened syrup over potatoes and cover dish with aluminum foil. Step 4 Bake 30 minutes, then remove foil and bake about 50 minutes to 1 hour more, basting with sauce every 15 minutes.  Step 5 Let cool slightly before serving.",
country: 'Canada',
description: "For many, candied yams are an indispensable part of the Thanksgiving meal, along with mashed potatoes and homemade cranberry sauce.  We agree! Though candied yams might be super sweet on their own, they're the perfect complement to a plateful of savory dishes. Our version gets an added kick from bourbon; once you try them, we guarantee you'll never want this dish without it!",
user_id: 9,
ingredients: "1/2 c. dark brown sugar
1/2 c. orange juice
3 tbsp. butter, plus more for pan
1 cinnamon stick
2 tbsp. bourbon (optional) 
Pinch nutmeg
Pinch kosher salt
5 medium yams (about 3 lb.)"})

recipe10 = Recipe.create({ title: 'Lemon Pepper Omelette',
gluten_free: false,
vegan: false,
vegetarian: true,
breakfast: true,
kosher: false,
peanut_free: false,
halal: false,
dinner: false,
lunch: false,
dessert: false,
appetizer: false,
photo: '/app/db/seed_assets/veggie-omelette-08.png',
time: 10,
number_of_servings: 2,
instructions: "You oil a pan with olive oil, mix 2-3 eggs in a bowl, add 2 tablespoons of water, season with salt, season with lemon pepper (my favorite Lemon Pepper is from Trader Joe’s by the way), pour the egg mix into your frying pan, and fold the eggs in half after the edges begin to form solid (around 2-3 min).  Add cheese or any other filling of choice (such as chives, onion, avocado, or tomato) to the center of the pan, in the middle of the eggs. Fold the eggs in half. Flip to brown if necessary. And boom. You have yourself an omelette.",
country: 'Canada',
description: "This recipe is surprisingly quick. It shouldn’t take you more than  ten minutes. And it’s so easy I actually learned the recipe from an eight year old. She taught me while I was babysitting!",
user_id: 10,
ingredients: "2-3 eggs
Lemon Pepper
Salt 
Olive Oil
Water
Cheese (or whatever toppings of your choosing! Ex: chives, onion, goat cheese, american cheese, swiss cheese, avocado, tomato, green onions, bell peppers)"})



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

##REVIEWS
review1 = Review.create ({ user_id: 1, recipe_id: 1, comment: "Absolutely love this recipe!", rating: 4 })
review2 = Review.create ({ user_id: 2, recipe_id: 2, comment: "Excellent gluten-free option.", rating: 5 })
review3 = Review.create ({ user_id: 3, recipe_id: 3, comment: "Thanks for sharing!", rating: 4 })
review4 = Review.create ({ user_id: 4, recipe_id: 4, comment: "Such a good peanut-free appy, thanks for sharing!!", rating: 4 })
review5 = Review.create ({ user_id: 5, recipe_id: 5, comment: "Good simple dinner option.", rating: 5 })
review6 = Review.create ({ user_id: 6, recipe_id: 6, comment: "Super easy and quick!! Will be making again!", rating: 5 })
review7 = Review.create ({ user_id: 7, recipe_id: 7, comment: "Love it!", rating: 4 })
review8 = Review.create ({ user_id: 8, recipe_id: 8, comment: "So tasty!", rating: 5 })
review9 = Review.create ({ user_id: 9, recipe_id: 9, comment: "I make this recipe all the time, my kids love it!", rating: 4 })
review10 = Review.create ({ user_id: 10, recipe_id: 10, comment: "Nice, fast, and simple.", rating: 3 })

