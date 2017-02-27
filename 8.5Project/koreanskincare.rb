# Korean Skincare Recommendation App

# -->Required Gems 





# -->Initialize Database(s)
kordb = SQLite3::Database.new("KoSkincare.db")



# -->SQL Commands
# Create Table that will house recommended products for the user
cr_recommended_products = <<-SQL
	CREATE TABLE IF NOT EXISTS rec_prod(
		id INT PRIMARY KEY, 
		name VARCHAR(255)
		price INT, 
		description VARCHAR(255),
		brand_id INT, 
		stype_id INT, 
		FOREIGN KEY (brand_id) REFERENCES brands(id)
		FOREIGN KEY (stype_id) REFERENCES skintype(id)
	)
SQL

# Create table that will house the skin type (3 options-dry, oily, combo)
cr_skin_type_options = <<-SQL
	CREATE TABLE IF NOT EXISTS skintype(
	id INT PRIMARY KEY, 
	type VARCHAR(255)
	)
SQL


# Create table that will house all the recommended brand types (10 different brands)
cr_brand_type_options = <<-SQL
	CREATE TABLE IF NOT EXISTS brands(
	id INT PRIMARY KEY, 
	brand_name VARCHAR(255)
	)
SQL

# --> Create table (execute)
kordb.execute(cr_recommended_products)
kordb.execute(cr_skin_type_options)
kordb.execute(cr_brand_type_options)







