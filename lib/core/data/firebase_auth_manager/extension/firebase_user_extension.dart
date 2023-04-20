//

import 'package:chatty/core/domain/models/app_user.dart';
import 'package:collection/collection.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension UserMapper on User {
  AppUser toDomain(UserProvider provider) {
    return AppUser(
      uid: uid,
      name: displayName,
      email: email,
      imageUrl: providerData.firstOrNull?.photoURL,
      isAnonymous: isAnonymous,
      provider: provider,
      isOnline: true,
    );
  }
}
