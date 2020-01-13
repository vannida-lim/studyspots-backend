User.destroy_all
Location.destroy_all


user = User.create!([{username: "vannida", password: "123456"}])


businesses = JSON.parse(File.read('db.json'))

businesses["businesses"].each do |business|
    Location.add_business_by_db_json(business)
end





