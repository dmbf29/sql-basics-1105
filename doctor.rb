require 'sqlite3'
DB = SQLite3::Database.new("doctors.sqlite")

class Doctor
  def initialize(attributes = {})
    @id = attributes[:id] || attributes['id']
    @name = attributes[:name] || attributes['name']
    @age = attributes[:age] || attributes['age']
    @specialty = attributes[:specialty] || attributes['specialty']
  end

  def save
    puts 'writing SQL to insert Kentas info into the DB'
    DB.execute('INSERT INTO doctors (name) VALUES (?)', @name)
    puts 'ask the DB what ID it just gave to kenta'
    puts 'then we will store that ID inside the instance'
    @id = DB.last_insert_row_id
  end

  def self.all
    DB.results_as_hash = true
    puts "Asking the DB for all my doctors"
    puts "Then creating instances with that information"
    results = DB.execute('SELECT * FROM doctors')
    results.map do |doctor_hash|
      # p doctor_hash
      Doctor.new(doctor_hash)
    end
  end
end

p kenta = Doctor.new(name: 'kenta')
kenta.save
p kenta
# p Doctor.all
