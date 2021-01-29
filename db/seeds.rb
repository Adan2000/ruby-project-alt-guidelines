


user1 = User.create(name: "James")
user2 = User.create(name: "JohnD")
user3 = User.create(name: "Syd")
user4 = User.create(name: "Colin")
user5 = User.create(name: "Lantz")

trainer1 = Trainer.create(name: "Austin")
trainer2 = Trainer.create(name: "Jennifer")
trainer3 = Trainer.create(name: "Jordan")

Session.create(user_id: user1.id, trainer_id: trainer2.id, date: DateTime.now)
Session.create(user_id: user2.id, trainer_id: trainer2.id, date: "Jan/17/2021")
Session.create(user_id: user5.id, trainer_id: trainer1.id, date: "Jan/20/2021")
Session.create(user_id: user3.id, trainer_id: trainer3.id, date: "Jan/25/2021")
Session.create(user_id: user4.id, trainer_id: trainer1.id, date: "Jan/30/2021")
Session.create(user_id: user1.id, trainer_id: trainer3.id, date: "Jan/21/2021")

