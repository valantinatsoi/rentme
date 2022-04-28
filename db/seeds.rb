# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.destroy_all
Category.destroy_all


Category.create(name: "personal", image_url: "https://images.unsplash.com/photo-1518894347072-3bfedb006095?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1373&q=80", description: "Need a stand-in boyfriend for your next CNY gathering?")
Category.create(name: "professional", image_url: "https://images.unsplash.com/photo-1565728744382-61accd4aa148?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2073&q=80", description: "Find a stand-in secretary for your next meeting!")


Listing.create(category: Category.find_by(name:"personal"), user: User.first, slogan: "The best 'fake' boyfriend you'll ever have", description: "I can help you wipe the disappointment off your parents faces when you bring me home", fee: 600)
Listing.create(category: Category.find_by(name:"personal"), user: User.third, slogan: "Need a wedding date? I'm your man!", description: "I have my own suit and can talk you up to anyone that'll listen", fee: 500)
Listing.create(category: Category.find_by(name:"personal"), user: User.fourth, slogan: "I eat everything", description: "Pay for my meal and I'll come with you to anything... nothing is to weird for me!", fee: 0)
Listing.create(category: Category.find_by(name:"professional"), user: User.second, slogan: "How can I help you?", description: "I have real life experience as a PA so I can be the best fake one", fee: 750)
