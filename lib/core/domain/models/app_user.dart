//

import 'package:equatable/equatable.dart';

enum UserProvider {
  anonymous,
  username,
  google;

  factory UserProvider.fromString(String value) {
    return UserProvider.values
        .firstWhere((element) => element.value() == value);
  }
}

extension UserProviderMapper on UserProvider {
  String value() {
    return toString().split('.').last;
  }
}

class AppUser extends Equatable {
  final String uid;
  final String? name;
  final String? email;
  final String? imageUrl;
  final bool isAnonymous;
  final UserProvider provider;
  final bool isOnline;
  final String? about;
  final DateTime lastOnline;

  const AppUser({
    required this.uid,
    this.name,
    this.email,
    this.imageUrl,
    this.isAnonymous = false,
    required this.provider,
    required this.isOnline,
    this.about,
    required this.lastOnline,
  });

  factory AppUser.initial() => AppUser(
        uid: '',
        provider: UserProvider.anonymous,
        isOnline: false,
        lastOnline: DateTime.now(),
      );

  @override
  String toString() {
    return 'AppUser(uid: $uid, name: $name, about: $about)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'imageUrl': imageUrl,
      'isAnonymous': isAnonymous,
      'provider': provider.value(),
      'isOnline': isOnline,
      'about': about,
      'lastOnline': lastOnline.millisecondsSinceEpoch,
    };
  }

  Map<String, dynamic> toProfileMap() {
    return <String, dynamic>{
      'name': name,
      'about': about,
    };
  }

  factory AppUser.fromMap(Map<String, dynamic> map, String userId) {
    return AppUser(
      uid: userId,
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      imageUrl:
          (map['imageUrl'] != null || (map['imageUrl'] as String).isNotEmpty)
              ? map['imageUrl'] as String
              : null,
      isAnonymous:
          map['isAnonymous'] != null ? map['isAnonymous'] as bool : false,
      provider: map['provider'] != null
          ? UserProvider.fromString(map['provider'] as String)
          : UserProvider.anonymous,
      isOnline: map['isOnline'] != null ? map['isOnline'] as bool : false,
      about: map['about'] != null ? map['about'] as String : null,
      lastOnline: map['lastOnline'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['lastOnline'] as int)
          : DateTime.now(),
    );
  }

  bool hasImage() {
    if (imageUrl != null) {
      if (imageUrl!.isNotEmpty) {
        return true;
      }
    }
    return false;
  }

  @override
  List<Object?> get props => [
        uid,
        name,
        email,
        imageUrl,
        isAnonymous,
        provider,
        isOnline,
        about,
        lastOnline
      ];
}
