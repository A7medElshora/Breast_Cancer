import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:breast_cancer/models/my_user.dart';


class DatabaseUtils {
  static CollectionReference<MyUser> getUsersCollection() {
    return FirebaseFirestore.instance
        .collection(MyUser.collectionName)
        .withConverter<MyUser>(
          fromFirestore: (snapshot, options) =>
              MyUser.fromFireStore(snapshot.data()),
          toFirestore: (user, options) => user.toFireStore(),
        );
  }

  static Future<MyUser?> getUser(String userId) async {
    var documentSnapshot = await getUsersCollection().doc(userId).get();
    documentSnapshot.data();
  }

  static Future<void> addUserToFireStore(MyUser user) {
    return getUsersCollection().doc(user.id).set(user);
  }

  static Future<MyUser?> readUserFromFireStore(String uId) async {
    var querySnapShot = await getUsersCollection().doc(uId).get();
    return querySnapShot.data();
  }


}