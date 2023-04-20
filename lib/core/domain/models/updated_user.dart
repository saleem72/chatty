// ignore_for_file: public_member_api_docs, sort_constructors_first
//

class UpdatedUser {
  // final String uid;
  final String name;
  final String about;

  UpdatedUser({
    // required this.uid,
    required this.name,
    required this.about,
  });

  UpdatedUserWithId toUpdatedUserWithId(String uid) {
    return UpdatedUserWithId(
      uid: uid,
      name: name,
      about: about,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'about': about,
    };
  }
}

class UpdatedUserWithId {
  final String uid;
  final String name;
  final String about;

  UpdatedUserWithId({
    required this.uid,
    required this.name,
    required this.about,
  });

  factory UpdatedUserWithId.fromUpdatedUser(
    String uid,
    UpdatedUser updatedUser,
  ) {
    return UpdatedUserWithId(
      uid: uid,
      name: updatedUser.name,
      about: updatedUser.about,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'about': about,
    };
  }
}
