class UserModel {
  final String name;
  final String email;
  final String gender;
  final String password;
  final String recommendation;

  UserModel(
      {required this.name,
      required this.email,
      required this.gender,
      this.password = '',
      this.recommendation = ''});
}

UserModel mockUser = UserModel(
    name: 'Rezki',
    email: 'muhammad.rezki.ananda@gmail.com',
    gender: 'Laki - laki');
