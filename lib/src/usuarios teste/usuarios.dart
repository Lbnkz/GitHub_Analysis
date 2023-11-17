class User {
  final int id;
  final String name;
  final String imageUrl;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}


final User currentUser = User(
  id: 0,
  name: 'Lucasss',
  imageUrl: '../assets/user1.jpeg',
);

// USERS
final User greg = User(
  id: 1,
  name: 'Nycolas',
  imageUrl: '../assets/user2.jpeg',
);
final User james = User(
  id: 2,
  name: 'Maçaneiro',
  imageUrl: '../assets/user3.jpeg',
);