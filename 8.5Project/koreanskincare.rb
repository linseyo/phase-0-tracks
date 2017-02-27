# Korean Skincare Recommendation App
# Produce three databases that will be accessed via user input (numbers)
# Return a recommended product based on the id number that relate to the user input 
# i.e: User input 1 for skin type (dry) & 4 for toner:
# a product that is for dry skin for that step.
# -->Required Gems 
require 'sqlite3'


# -->Initialize Database(s)
kordb = SQLite3::Database.new("KoSkincare.db")
# kordb.results_as_hash = true

# -->SQL Commands
# Create Table that will house recommended products for the user
cr_recommended_products = <<-SQL
	CREATE TABLE IF NOT EXISTS rec_prod(
		id INT PRIMARY KEY, 
		name VARCHAR(255),
		stype_id INT, 
		step_id INT,
		FOREIGN KEY (stype_id) REFERENCES skintype(id),
		FOREIGN KEY (step_id) REFERENCES step(id)
	)
SQL

# Create table that will house the skin type (4 options-dry, oily, combo, normal)
cr_skin_type_options = <<-SQL
	CREATE TABLE IF NOT EXISTS skintype(
	id INT PRIMARY KEY, 
	type VARCHAR(255)
	)
SQL


# Create table that houses each step of the skincare process
cr_skincare_step = <<-SQL
	CREATE TABLE IF NOT EXISTS step(
	id INT PRIMARY KEY, 
	steps VARCHAR (255)
	)
SQL

# --> Create table (execute)
kordb.execute(cr_skin_type_options)
kordb.execute(cr_skincare_step)
kordb.execute(cr_recommended_products)

# Insert Skin Type into Table 
insert_skin_types = <<-SQL
	INSERT INTO skintype (type) VALUES ("Dry");
	INSERT INTO skintype (type) VALUES ("Oily");
	INSERT INTO skintype (type) VALUES ("Combination");
	INSERT INTO skintype (type) VALUES ("Normal");
SQL

def skin_type_table
	kordb.execute(insert_skin_types)
end


# Insert Skincare Step into Table 
insert_skincare_step = <<-SQL
	INSERT INTO step (steps) VALUES ("Makeup Remover/Oil Cleanser");
	INSERT INTO step (steps) VALUES ("Water Base Cleanser");
	INSERT INTO step (steps) VALUES ("Exfoliation");
	INSERT INTO step (steps) VALUES ("Toner");
	INSERT INTO step (steps) VALUES ("Essence");
	INSERT INTO step (steps) VALUES ("Serums, Boosters & Ampoules");
	INSERT INTO step (steps) VALUES ("Sheet Mask");
	INSERT INTO step (steps) VALUES ("Eye Cream");
	INSERT INTO step (steps) VALUES ("Moisturizer");
	INSERT INTO step (steps) VALUES ("SPF");
SQL

def skincare_step_table
	kordb.execute(insert_skincare_step)
end

# Insert Product Recommendations into Table 
insert_product_rec = <<-SQL
# There should be 10 products for each skintype, one for each step
# Dry Skin
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("KLAIRS Gentle Black Deep Cleansing Oil", 1, 1);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("NEOGEN Cranberry Tea Real Fresh Foaming CLeaner", 1, 2);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("NEOGEN Bio-Peel Gauze Peeling Wine", 1, 3);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("MANEFIT Bling Bling Hydro Gel Mask", 1, 4);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("MISSHA Time Revolution Clear Toner", 1, 5);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("MISSHA First Treatment Essence Mist", 1, 6);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("RE:P Nutrinature Ultra Moist Gel", 1, 7);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("INNISFREE Ochid Eye Cream", 1, 8);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("RE:P Nutrinature Ultra Nourishing Cream", 1, 9);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("NEOGEN Day-Light Protection Sun Screen", 1, 10);
# Oily Skin
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("BANILA CO Clean It Zero Purity", 2, 1);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("NEOGEN Green Tea Real Fresh Foaming Cleaner", 2, 2);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("GOODAL Deep Clean Pore Glacial Clay", 2, 3);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("MANEFIT Beauty Planner Mugwort Sheet Mask", 2, 4);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("RE:P Organic Cotton Tratment Toning Pad", 2, 5);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("COSRX Advanced Snail 96 Mucin Power Essence", 2, 6);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("KLAIRS Freshly Juiced Vitamin C Serum", 2, 7);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("MISSHA Misa Cho Bo Yang Eye Cream", 2, 8);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("BENTON Aloe Propolis Soothing Gel", 2, 9);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("MISSHA Mild Essence Sun Milk", 2, 10);
# Combo Skin
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("BANILA CO Clean It Zero Purity", 3, 1);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("NEOGEN Green Tea Real Fresh Foaming Cleanser", 3, 2);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("SKINFOOD Black Sugar Strawberry Mask Wash Off", 3, 3);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("MANEFIT Bling Bling Hydro Gel Mask", 3, 4);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("RE:P Organic Cotton Treatment Toning Pad", 3, 5);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("COSRX Galactomyces 95 Whitening Power Esence", 3, 6);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("MISSHA Time Revolution Night Repair New Science Activation Ampoule", 3, 7);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("GOODAL Moisture Barrier Eye Cream", 3, 8);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("BENTON Snail Bee High Content Lotion", 3, 9);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("NEOGEN Day-Light Protection Sun Screen", 3, 10);
# Normal Skin
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("BANILA CO Clean It Zero Classic", 4, 1);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("NEOGEN Cranberry Tea Real Fresh Foaming CLeaner", 4, 2);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("NEOGEN Bio-Peel Gauze Peeling Wine", 4, 3);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("MANEFIT Bling Bling Hydro Gel Mask", 4, 4);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("SON & PARK Beauty Water", 4, 5);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("SKINFOOD Premium Lettuce Cucumber Watery Essence", 4, 6);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("MISSHA Time Revolution Night Repair New Science Activation Ampoule", 4, 7);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("MISSHA Misa Cho Bo Yang Eye Cream", 4, 8);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("BENTON Aloe Propolis Soothing Gel", 4, 9);
	INSERT INTO rec_prod (name, stype_id, step_id) VALUES ("NEOGEN Day-Light Protection Sun Screen", 4, 10);
SQL

def product_rec_table
	kordb.execute(insert_product_rec)
end

# ---> USER INTERFACE <----
puts "Annyong! Have you heard about the latest trend in Skincare? It's the Korean 10 Step Skincare!"
puts "---------------------------"
puts "We've got the best recommendations based on Step, Skintype and Brands for you."
puts "---------------------------"
puts "To get started please select a skincare step (1-10): "
sstep = gets.chomp.to_i 

puts "---------------------------"
puts "Great and now, what is your Skin Type? (1-Dry, 2-Oily, 3-Combination, 4-Normal): "
sstype = gets.chomp.to_i 
puts "---------------------------"
puts "Fantastic! Here is what we recommend: "
recommendation = kordb.execute("SELECT name FROM rec_prod WHERE rec_prod.stype_id = skintype.id AND rec_prod.step.id = step.id ")
recommendation.each do |rec|
	puts "#{recommendation['name']}!"
end


















