meme = Meme.create(
    title: "It was natural", 
    top_text: "Me: He Died of natural causes, Cop: You pushed him off the roof, Me: Gravity is natural. Cop:")
    
    meme.featured_image.attach(io: File.open(Rails.root.join('app/assets/images/bird.jpg')), filename: 'bird.jpg')

tag = Tag.create(meme_id: 1, name: "cop")


