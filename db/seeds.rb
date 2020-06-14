# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sectors = Sector.create([{name:'Gek Poh Rise'},{name:'Jurong Crescent'},{name:'Clementi Villa'},{name:'Yishun Heights'}])

users = User.create([
    {email:'userA@gmail.com', password: 'password', sector_id:'1'},
    {email:'userB@gmail.com', password: 'password', sector_id:'2'},
    {email:'userC@gmail.com', password: 'password', sector_id:'3'},
    {email:'userD@gmail.com', password: 'password', sector_id:'4'},
    {email:'userE@gmail.com', password: 'password', sector_id:'1'},
    {email:'userF@gmail.com', password: 'password', sector_id:'2'},
    {email:'userG@gmail.com', password: 'password', sector_id:'3'},
    {email:'userH@gmail.com', password: 'password', sector_id:'4'}
    ])

cats = Cat.create([
    {name:'Kuching', sector_id:'1', imageUrl:"http://theoldreader.com/kittens/files/images/49333592@N08-5249211340/600x400.jpg"},
    {name:'Neko', sector_id:'1', imageUrl:"http://theoldreader.com/kittens/files/images/60699107@N00-5922243191/600x400.jpg"},
    {name:'Mao', sector_id:'1', imageUrl:"http://theoldreader.com/kittens/files/images/99713555@N00-47135738762/600x400.jpg"},
    {name:'Gazorpazorpfield', sector_id:'1', imageUrl:"http://theoldreader.com/kittens/files/images/33152876@N08-3916053706/600x400.jpg"},
    {name:'John Cena', sector_id:'2', imageUrl:"http://theoldreader.com/kittens/files/images/26389679@N07-49752282373/600x400.jpg"},
    {name:'Jeff', sector_id:'2', imageUrl:"http://theoldreader.com/kittens/files/images/78269702@N03-32745250392/600x400.jpg"},
    {name:'Tom', sector_id:'3', imageUrl:"http://theoldreader.com/kittens/files/images/46122506@N05-34189578160/600x400.jpg"},
    {name:'Cat', sector_id:'4', imageUrl:"https://theoldreader.com/kittens/files/images/61322584@N07-6538907429/600x400.jpg"}
])

