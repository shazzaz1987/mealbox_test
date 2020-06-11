require 'csv'

namespace :import_ingredients do
  desc 'Import CSV Data'
  task import1: :environment do
    csv_file_path = 'db/data.csv'

    CSV.foreach(csv_file_path) do |row|
      Ingredient.create(
                        name: row[1],
                        category: row[2],
                        cost: row[3],
                        qtyunit: row[4])
      #puts 'Row added!'
    end
  end
end

namespace :import_recipies do
  desc 'Import CSV Data'
  task import2: :environment do
    csv_file_path = 'db/data2.csv'
    csv_text = File.read(csv_file_path)
    csv = CSV.parse(csv_text, :headers => false)

    csv.each do |row|
      Recipe.create(
                    name: row[1],
                    cuisine: row[2],
                    user_id: row[3],
                    costperserving: row[4])
      puts 'Row added!'
    end
  end
end

namespace :import_recipieIngredients do
  desc 'Import CSV Data'
  task :import => :environment do
    csv_file_path = 'db/recipies.csv'

    CSV.foreach(csv_file_path) do |row|
      Recipe.create!({
        :user_id => row[1],
        :name => row[2],
        :cuisine => row[3],
        :costperserving => row[4],
        :views => row[5],
        :instructions => row[6],
        :image => row[7]              
      })
      puts "Row added!"
      end
  end
end
