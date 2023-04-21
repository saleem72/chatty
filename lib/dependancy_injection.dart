//

import 'package:chatty/core/data/repositories/auth_service.dart';
import 'package:chatty/core/data/repositories/user_service.dart';
import 'package:chatty/core/data/safe/safe.dart';
import 'package:chatty/core/domain/repositories/i_auth_service.dart';
import 'package:chatty/core/domain/repositories/i_user_service.dart';
import 'package:chatty/core/presentation/auth_bloc/auth_bloc.dart';
import 'package:chatty/features/auth/login_screen/presentation/bloc/login_entries_bloc.dart';
import 'package:chatty/features/auth/login_screen/presentation/login_bloc/login_bloc.dart';
import 'package:chatty/features/home_screen/data/services/chats_service.dart';
import 'package:chatty/features/home_screen/domain/services/i_chats_service.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/home_screen/presentation/home_bloc/home_bloc.dart';

final locator = GetIt.instance;

Future<void> initDependancies() async {
  // Features
  // Login
  locator.registerFactory(() => LoginBloc(authManager: locator()));
  locator.registerFactory(() => LoginEntriesBloc());

  // Home
  locator.registerFactory(
      () => HomeBloc(authManager: locator(), chatsService: locator()));
  locator.registerFactory<IChatsService>(
      () => ChatsService(db: FirebaseDatabase.instance));

  // core
  locator.registerLazySingleton<IAuthService>(() => FirebaseAuthManager());
  locator.registerLazySingleton(
      () => AuthBloc(authManager: locator(), userService: locator()));
  locator.registerLazySingleton(() => Safe(storage: locator()));
  locator.registerLazySingleton<IUserService>(() => UserService());
  // external
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(sharedPreferences);
}
