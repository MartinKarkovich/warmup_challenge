CATEGORIES = ["Science","Cuisine","Drama","Videogames","Music","Cars"]

3.times do |i|
    User.create!(
        email:"email#{i}@email.com",
        password:"password#{i}"
    )
end

CATEGORIES.each do |category|
    Category.create!(
        name: category
    )
end

3.times do |i|
    3.times do |j|
    Post.create!(
        title: "title#{i}#{j}",
        content: "content#{i}#{j}",
        image: "image#{i}#{j}",
        category_id:rand(1..CATEGORIES.length),        
        user_id: i+1,     
    )    
    end

end
