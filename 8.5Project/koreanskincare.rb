# Korean Skincare Recommendation App
# Produce three databases that will be accessed via user input (numbers)
# Return a recommended product based on the id number that relate to the user input 
# i.e: User input 1 for skin type (dry) & 3 for brand preference (skinfood)
# a product that is for dry skin from Skinfood for that given skincare step will get returned.
# -->Required Gems 
require 'sqlite3'


# -->Initialize Database(s)
kordb = SQLite3::Database.new("KoSkincare.db")
kordb.results_as_hash = true

# -->SQL Commands
# Create Table that will house recommended products for the user
cr_recommended_products = <<-SQL
	CREATE TABLE IF NOT EXISTS rec_prod(
		id INT PRIMARY KEY, 
		name VARCHAR(255)
		brand_id INT, 
		stype_id INT, 
		step_id INT,
		FOREIGN KEY (brand_id) REFERENCES brands(id),
		FOREIGN KEY (stype_id) REFERENCES skintype(id),
		FOREIGN KEY (step_id) REFERENCES step(id)
	)
SQL

# Create table that will house the skin type (3 options-dry, oily, combo)
cr_skin_type_options = <<-SQL
	CREATE TABLE IF NOT EXISTS skintype(
	id INT PRIMARY KEY, 
	type VARCHAR(255)
	)
SQL


# Create table that will house all the recommended brand types (5 different brands)
cr_brand_type_options = <<-SQL
	CREATE TABLE IF NOT EXISTS brands(
	id INT PRIMARY KEY, 
	brand_name VARCHAR(255)
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
kordb.execute(cr_recommended_products)
kordb.execute(cr_skin_type_options)
kordb.execute(cr_brand_type_options)
kordb.execute(cr_skincare_step)

# Insert Skin Type into Table 
insert_skin_types = <<-SQL
	INSERT 

SQL
def skin_type_table(type)
	kordb.execute(insert_skin_types)
end








# ---> USER INTERFACE <----
puts "Annyong! Have you heard about the latest trend in Skincare? It's the Korean 10 Step Skincare!"
puts "---------------------------"
puts "We've got the best recommendations based on Step, Skintype and Brands for you."
puts "---------------------------"
puts "To get started please select a skincare step (1-10): "
sstep = gets.chomp.to_i 
puts "---------------------------"
puts "Great and now, what is your Skin Type? (1-Dry, 2-Oily, 3-Combination): "
sstype = gets.chomp.to_i 
puts "---------------------------"
puts "Awesome! And last, do you have a brand preference? (1-COSRX, 2-Innisfree, 3-Skinfood, 4-Neogen, 5-Klairs): "
puts "---------------------------"
puts "Fantastic! Here is what we recommend: "
recommendation = kordb.execute("SELECT name FROM rec_prod WHERE rec_prod.brand_id = brands.id AND rec_prod.stype_id = skintype.id AND rec_prod.step.id = step.id ")
recommendation.each do |rec|
	puts "#{recommendation['name']}!"
end


















