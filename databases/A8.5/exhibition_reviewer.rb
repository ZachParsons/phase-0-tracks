# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
erdb = SQLite3::Database.new("exhibition_reviews.db")
erdb.results_as_hash = true 

# create table exhibitions
create_exhibitions_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS exhibitions(
    id INTEGER PRIMARY KEY,
    exhibitor VARCHAR(255),
    artists VARCHAR(255),
    curator VARCHAR(255),
    location VARCHAR(255),
    exh_title VARCHAR(255),
    opening_date VARCHAR(255),
    duration VARCHAR(255),
    press VARCHAR(255)
    catalog BOOLEAN,
  )
SQL

# create table works
create_works_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS works(
    id INTEGER PRIMARY KEY,
    artist VARCHAR(255),
    completed_date VARCHAR(255),
    medium VARCHAR(255),
    scale VARCHAR(255),
    style VARCHAR(255),
    subject VARCHAR(255),
    work_title VARCHAR(255),
    exhibition_id
    FOREIGN KEY (exhibitions_id) REFERENCES exhibitions(id));
  )
SQL


erdb.execute(create_exhibitions_table_cmd)
erdb.execute(create_works_table_cmd)

# methods
def create_exhibition(db, exh_title, location, exhibitor, opening_date, duration, curator, artists, catalog, press)
  erdb.execute("INSERT INTO exhibitions (location, exhibitor, opening_date, duration, curator, artists, catalog, press) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" [location, exhibitor, opening_date, duration, curator, artists, catalog, press])
end
def read_exhibition(db)
  erdb.execute("SELECT * FROM exhibitions")
end
def update_exhibition(db, attribute, value, updateable)
  erdb.execute("UPDATE exhibitions SET #{attribute} = #{value} WHERE #{attribute} = #{updateable}")
end
def delete_exhibition(db, attribute, deletable)
  erdb.execute("DELETE FROM exhibitions WHERE #{attribute} = #{deletable}")
end

def create_work(db, work_title, artist, completed_date, medium, scale, style, subject)
  erdb.execute("INSERT INTO works (work_title, artist, completed_date, medium, scale, style, subject) VALUES (?, ?, ?, ?, ?, ?, ?)" [work_title, artist, completed_date, medium, scale, style, subject])
end
def read_work(db)
  erdb.execute("SELECT * FROM works")
end
def update_work(db, attribute, value, updateable)
  erdb.execute("UPDATE works SET #{attribute} = #{value} WHERE #{attribute} = #{updateable}")
end
def delete_work(db, attribute, deletable)
  erdb.execute("DELETE FROM works WHERE #{attribute} = #{deletable}")
end

# UI

erdb.execute("SELECT * FROM exhibitions, works WHERE works.exhibition_id = exhibitions.id")

puts "Let's review an exhibition..."
puts "Who is this exhibition's exhibitor?"
exhibitor = gets.chomp
puts "Who are this exhibition's artists?"
artists = gets.chomp
puts "Who is this exhibition's curator?"
curator = gets.chomp
puts "Where is this exhibition's location"
location = gets.chomp
puts "When is this exhibition's opening date?"
opening_date = gets.chomp
puts "How long will this exhibition run?"
duration = gets.chomp
puts "What is this exhibition's title?"
exh_title  = gets.chomp
puts "Who published reviews of this exhibition?"
press = gets.chomp
puts "Does this exhibition have a catalog?"
catalog = gets.chomp
erdb.create_exhibition(erdb, exhibitor, artists, curator, location, opening_date, duration, exh_title, press, catalog)
erdb.execute("SELECT * FROM exhibitions")

puts "Let's review a work..."
puts "Who is created this work?"
artist = gets.chomp
puts "When was this work completed?"
completed_date = gets.chomp
puts "What medium is this work?"
medium = gets.chomp
puts "What scale is this work?"
scale = gets.chomp
puts "What style is this work?"
style  = gets.chomp
puts "What is the subject of this work?"
subject = gets.chomp
puts "What is the title of this work?"
work_title = gets.chomp
erdb.create_work(erdb, artist, completed_date, medium, scale, style, subject, work_title)
erdb.execute("SELECT * FROM works")
