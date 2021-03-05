part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(UserModel user) async {
    _userCollection.doc(user.id).set({
      'email': user.email,
      'name': user.name,
      'balance': user.balance,
      'selectedGenres': user.selectedGenres,
      'selectedLanguage': user.selectedLanguage,
      'profilePicture': user.profilePicture ?? ""
    });
  }

  static Future<UserModel> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();

    return UserModel(
      id,
      snapshot.data()['email'],
      profilePicture: snapshot.data()['profilePicture'],
      selectedGenres: (snapshot.data()['selectedGenres'] as List)
          .map((e) => e.toString())
          .toList(),
      selectedLanguage: snapshot.data()['selectedLanguage'],
      name: snapshot.data()['name'],
    );
  }
}
