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

## RECIPES 
recipe1 = Recipe.create({ title: 'Chocolate Chip Muffins' ,  gluten_free: false ,  vegan: true ,  vegetarian: true ,  breakfast: true ,  kosher: false ,  peanut_free: true,  halal: true,  dinner: false,  lunch: false ,  dessert: false,  appetizer: false,  photo: '/db/seed_assets/Vegan-Chocolate-Chip-Muffins.png' ,  time: 35 ,  number_of_servings: 12 ,  instructions: " Preheat your oven to 400F (200C). 2. Line 12 wells of a muffin pan with paper liners or lightly grease the pan. For larger muffins line 8 -9 wells. 3. In a large bowl whisk together the flour, sugar, baking powder, and salt. 4. Pour in the plant-based milk, oil, lemon juice or apple cider vinegar, and vanilla and gently stir to combine. Don't overmix, lumps are totally cool. Overmixing can result in the muffins not rising properly. 5. Lastly add the chocolate chips and gently fold them in. 6. Divide the batter evenly among the prepared muffin tin. 7. Bake 20 to 25 minutes until lightly golden on top and a toothpick inserted into the center comes out clean. (If you are making 8 - 9 large muffins they may take an extra minute or two). 8. Let cool in the pan. 9. Store at room temperature for 3 - 4 days or frozen in an air-tight container. ",  country: 'Canada',  description: "1 bowl, 9 ingredients, the best easy vegan chocolate chip muffin recipe is here! These muffins are tender, fluffy, sweet, loaded with chocolate chips, and so tasty no one will know they are vegan!", user_id: 1, ingredients: "1.5 cups all-purpose flour
0.75 cup white sugar
2 teaspoons baking powder
0.5 teaspoon salt
0.75 cup plant-based milk, (such as soy or oat)
0.5 cup light oil, (such as canola or vegetable)
1 tablespoon lemon juice or apple cider vinegar,(makes the muffins fluffy, you will not taste it)
1 tablespoon vanilla extract
1 cup vegan chocolate chips"})
recipe2 = Recipe.create({ title: 'Raspberry Curd Lemon Cookies' ,  gluten_free: true ,  vegan: false,  vegetarian: false , breakfast: true , kosher: false , peanut_free: true, halal: false, dinner: false, lunch: false , dessert: true, appetizer: false, photo: '/app/db/seed_assets/Raspberry-Curd-Lemon-Cookies' , time: 240 ,  number_of_servings: 16,  instructions: "Raspberry curd:
Add the raspberries to a small saucepan and cook them over medium heat until they've completely softened and released their juices.
Pass the softened raspberries though a sieve, placed over a small bowl or jug, to remove the seeds and other solids. You should get about 80g or about ⅓ cup of raspberry juices.
Return the raspberry juices to the saucepan and add the lemon juice. Set aside until needed.
In a heat-proof bowl, whisk together the sugar, egg, egg yolk and salt until slightly fluffy and paler in colour (no need to use a stand or a hand mixer for this, just whisk them briefly together by hand with a balloon whisk).
Cook the raspberry-lemon juice mixture over medium heat until it only just comes to a boil (but don't allow too much moisture to evaporate, remove it from the heat as soon as it comes to a boil).
Add the hot raspberry juices to the egg-sugar mixture in a slow drizzle, whisking constantly until you've added all the juices.
Tip: This tempers the egg and egg yolk, and prevents your raspberry curd from splitting or curdling when you cook it.
Return the mixture to the saucepan and cook it over low heat with constant stirring until thickened so that it thickly coats the back of a spoon or spatula. This should take about 4-6 minutes. Don't allow the raspberry curd to come to a boil – you shouldn't see any bubbles forming.
Once thickened, remove from the heat and stir in the butter until it's fully melted. Add the vanilla and mix well.
Pour the finished raspberry curd into a bowl or heat-proof container and cover it with a sheet of plastic wrap/cling film. Make sure that the plastic wrap/cling film is in direct contact with the surface of the raspberry curd – this will prevent skin formation. Allow it to cool completely to room temperature, then chill it in the fridge for at least 1 hour or until thickened. (You can also prepare the raspberry curd a day or two in advance and keep it in the fridge until needed.)
Lemon cookie dough:
Add the sugar and lemon zest to a large bowl, and use your fingertips to rub the zest into the sugar.
Tip: This helps to release more essential oils from the zest, and it will make your cookies even more lemony and aromatic.
Add the melted butter, eggs, lemon juice and vanilla, and whisk well until combined.
In a separate bowl, whisk together the gluten free flour blend, xanthan gum, baking powder and salt, and add them to the wet ingredients. 
Mix with a wooden spoon or a rubber spatula until you get a smooth, batter-like cookie dough.
Tip: At this stage, the cookie dough will really be more like a batter – it will be very loose, soft and sticky, bordering on runny. That's how it should be. Don't add more flour!
Chill the cookie dough in the fridge for at least 2 hours before proceeding to the next step. You can also keep it in the fridge overnight if you want to bake the cookies the next day.
Tip: In addition to firming up the cookie dough into something you can actually handle and shape into balls, chilling also ensures that the cookies won’t melt into puddles during baking.
Assembling & baking the cookies:
Adjust the oven rack to the middle position, pre-heat the oven to 350ºF (180ºC) and line two large baking sheets with parchment/baking paper.
Tip: You will bake the cookies in two batches, so you can line two baking sheets if you have them on hand. Otherwise, just re-use the same baking sheet, but make sure to cool it completely before you place the next batch of unbaked cookies onto it.
Use a 2-tablespoon cookie or ice cream scoop to scoop out a portion of the cookie dough. Drop it directly into a bowl of powdered/icing sugar and roll it around until it’s evenly coated. The sugar coating will allow you to handle the cookie dough without it sticking, so you can roll it between your palms to form a perfectly round ball.
Repeat with the rest of the cookie dough, you should get 16 cookies in total.
Place the sugar-coated cookie dough balls onto the lined baking sheets, with plenty of space between them, about 8 per baking sheet (as the cookies will spread during baking).
Use a ½-tablespoon measuring spoon to make an indent in the centre of each cookie dough ball (make sure that you press only halfway through each cookie dough ball, not all the way through).
Fill the cookies with about 1 (generous) teaspoon of raspberry curd.
Tip: Note that you won't use up all of the raspberry curd. You can use the remainder to serve with the cookies, or you can spread it on bread or cakes, swirl it into frosting or similar.
Bake one baking sheet at a time at 350ºF (180ºC) for 9-12 minutes or until the cookies have spread and cracked around the edges and the raspberry curd centre is slightly puffed up but NOT visibly bubbling (this will ensure that it stays beautifully smooth and creamy).
While the first batch of cookies is baking, keep the second baking sheet with the cookies in the fridge until needed.
The cookies will be very soft and delicate immediately out of the oven. Allow them to cool on the baking sheet for about 5-10 minutes before transferring them to a wire rack to cool completely.
These raspberry curd lemon cookies are amazing both warm and at room temperature, but I find them to be at their very best when they're chilled from the fridge.
Storage:
The gluten free raspberry curd lemon cookies keep well in an airtight container at room temperature for 2-3 days, or in the fridge for up to about 1 week.
You will have some raspberry curd left over – you can store it in an airtight container in the fridge for up to about 10 days."}, country: 'Canada', { description: "Raspberry curd
The first step in this recipe is making a homemade raspberry curd, which you can prepare a few days in advance and then store it in the fridge until needed. Just resist the temptation to eat it by the spoonful, otherwise there’ll be nothing left by the time you want to assemble and bake the cookies.

This raspberry curd recipe is based on the super creamy, silky-smooth lemon curd that I used in the lemon curd cookies, with a few simple tweaks, such as swapping some of the lemon juice for raspberries and reducing the amount of sugar to give a raspberry curd that has just the right balance between sweet and refreshingly tart.

The lemon cookie dough
This is the same cookie dough that I used in my lemon curd cookies. It’s based on my gluten free lemon crinkle cookie recipe – with a few extra tweaks. I increased the amount of butter in the cookie dough, both to make it more buttery and also because I wanted the cookies to spread out a bit more in the oven. At the same time, I reduced the amount of baking powder slightly, to better control the cracks that form as the cookies expand during baking.

Making the cookie dough is incredibly straightforward: you just combine all the wet and all the dry ingredients separately, and then mix them together into a fairly loose, runny, batter-like cookie dough. Initially, the mixture will really look more like a batter than a cookie dough – but don’t panic! It needs to chill in the fridge for at least 2 hours, and then it will be firm enough to scoop and assemble the cookies. (You can also keep it in the fridge overnight and assemble the cookies the next day.)

" ,  user_id: 2, ingredients: "Raspberry curd:
▢150 g (1¼ cups) fresh or frozen raspberries
▢30 g (2 tbsp) freshly squeezed lemon juice
▢75 g (¼ cup + 2 tablespoons) caster/superfine or granulated sugar
▢1 US large/UK medium egg, room temperature
▢1 US large/UK medium egg yolk, room temperature
▢¼ tsp salt
▢55 g (½ stick) unsalted butter, cubed
▢½ tsp vanilla bean paste (or 1 tsp vanilla extract)
Lemon cookies:
▢150 g (¾ cup) caster/superfine or granulated sugar
▢zest of 2 lemons (Ideally, use organic unwaxed lemons.)
▢115 g (1 stick) unsalted butter, melted and cooled until warm
▢2 US large/UK medium eggs, room temperature
▢30 g (2 tbsp) freshly squeezed lemon juice
▢½ tsp vanilla bean paste (or 1 tsp vanilla extract)
▢240 g (2 cups) plain gluten free flour blend (I used Doves Farm Freee plain gluten free flour that doesn't have any xanthan gum added. You can also mix your own gluten free flour blend using this recipe. Note that for this homemade blend, 1 cup = 150g, so ideally use a digital food scale for best results.)
▢½ tsp xanthan gum (Omit if your gluten free flour blend already contains xanthan gum.)
▢½ tsp baking powder
▢¼ tsp salt
▢90 g (¾ cup) powdered/icing sugar, for rolling the cookies before baking"})
recipe3 = Recipe.create({ title: 'Vegan Waffles' , gluten_free: false ,  vegan: true ,  vegetarian: true , breakfast: true, kosher: false , peanut_free: false , halal: false , dinner: false, lunch: false, dessert: false, appetizer: false , photo: '/app/db/seed_assets/Vegan-Waffles.png' , time: 30, number_of_servings: 6, instructions: "1. Mix the nut milk, vanilla extract and the lemon juice or ACV together in a small bowl/measuring cup. Set aside for about 5 minutes - this will make the vegan buttermilk. 2. In a large bowl, sift the flour, baking powder and salt. The sifting really helps to make the waffles fluffy. 3. Add the sugar, melted butter/oil, buttermilk mixture into the dry ingredients and using a spatula, gently mix the batter until JUST combined. It's okay (and normal) to have some lumps. The batter should be thick and scoopable. 4. Turn on and preheat your waffle maker according to which done level that you want. I set mine to about medium because I like mine crisp and golden but also very fluffy. 3. Using a ½ cup (125mL) measuring cup, scoop out some batter and pour/spread into the middle of the greased waffle maker. You don’t need to push it to the edges. Close and let cook until the steam has COMPLETELY stopped from the waffle maker. Don't open it before the steam is finished! 4. Remove each waffle and place on a baking sheet in your oven or toaster oven on warm or 200F/95C to keep warm and crispy until finished with the entire batter. Continue with the rest of the batter. 5. Serve with your favourite toppings like blueberry sauce and enjoy!", country: 'Canada' , description: "If there’s one thing I know for sure, I LOVE waffles. Waffles of all kinds. I love sweet waffles. I love savoury waffles. Gluten free waffles. Even Mac and cheese waffles! Today I'm finally sharing some super easy, fluffy, classic buttermilk vegan waffles. These are honestly my absolute favourite, and they're pantry friendly too! They have that ideal texture of crispy on the outside and fluffy on the inside, and they're meal prep perfect. I usually just double a batch and I'm good to go.",  user_id: 3, ingredients: 1 1/2 cups unsweetened soy or coconut milk, or any vegan milk
"2 teaspoons apple cider vinegar
2 cups all-purpose flour, (240g)
1 tablespoon baking powder
1/2 teaspoon sea salt
1 tablespoon brown sugar or maple syrup
1/4 cup melted coconut oil or melted vegan butter 
1/2 teaspoon vanilla extract
fruits to serve or a dollop of vegan whipped cream"})

## FAVOURITES
favourite1 = Favourite.create ({ user_id: 1, recipe_id: 1 })
favourite2 = Favourite.create ({ user_id: 2, recipe_id: 2 })
favourite3 = Favourite.create ({ user_id: 3, recipe_id: 3 })

