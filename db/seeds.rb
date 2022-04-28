# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Listing.destroy_all
Category.destroy_all


Category.create(name: "personal", image_url: "https://images.unsplash.com/photo-1518894347072-3bfedb006095?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1373&q=80", description: "Need a stand-in boyfriend for your next CNY gathering?")
Category.create(name: "professional", image_url: "https://images.unsplash.com/photo-1565728744382-61accd4aa148?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2073&q=80", description: "Find a stand-in secretary for your next meeting!")

User.create(email: "steven@mail.com", password: "123456", first_name: "Steven", last_name: "Smith", avatar: "https://images.unsplash.com/photo-1507591064344-4c6ce005b128?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
User.create(email: "gertrude@mail.com", password: "123456", first_name: "Gertrude", last_name: "Samson", avatar: "https://images.unsplash.com/photo-1529232356377-57971f020a94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80")
User.create(email: "jason@mail.com", password: "123456", first_name: "Jason", last_name: "Tatum", avatar:"https://images.unsplash.com/photo-1487309078313-fad80c3ec1e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80")
User.create(email: "katie@mail.com", password: "123456", first_name: "Katie", last_name: "Khan", avatar:"https://images.unsplash.com/photo-1599900554895-5e0fc7bbc9c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")

Listing.create(category: Category.find_by(name: "personal"), user: User.find_by(name:"Steven"), slogan: "The best 'fake' boyfriend you'll ever have", description: "I can help you wipe the disappointment off your parents faces when you bring me home", fee: 600)
Listing.create(category: Category.find_by(name: "personal"), user: User.find_by(name:"Jason"), slogan: "Need a wedding date? I'm your man!", description: "I have my own suit and can talk you up to anyone that'll listen", fee: 500)
Listing.create(category: Category.find_by(name: "personal"), user: User.find_by(name: "Katie"), slogan: "I eat everything", description: "Pay for my meal and I'll come with you to anything... nothing is to weird for me!", fee: 0)
Listing.create(category: Category.find_by(name: "professional"), user: User.find_by(name: "Gertrude"), slogan: "How can I help you?", description: "I have real life experience as a PA so I can be the best fake one", fee: 750)
