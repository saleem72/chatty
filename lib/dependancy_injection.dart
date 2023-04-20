//

import 'package:chatty/core/data/repositories/auth_service.dart';
import 'package:chatty/core/data/repositories/user_service.dart';
import 'package:chatty/core/data/safe/safe.dart';
import 'package:chatty/core/domain/repositories/i_auth_service.dart';
import 'package:chatty/core/domain/repositories/i_user_service.dart';
import 'package:chatty/core/presentation/auth_bloc/auth_bloc.dart';
import 'package:chatty/core/presentation/user_cubit/user_cubit.dart';
import 'package:chatty/features/auth/login_screen/presentation/bloc/login_entries_bloc.dart';
import 'package:chatty/features/auth/login_screen/presentation/login_bloc/login_bloc.dart';
import 'package:chatty/features/home_screen/data/services/chats_service.dart';
import 'package:chatty/features/home_screen/domain/services/i_chats_service.dart';
import 'package:chatty/features/home_screen/presentation/users_bloc/users_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> initDependancies() async {
  // Features
  // Login
  locator.registerFactory(() => LoginBloc(authManager: locator()));
  locator.registerFactory(() => LoginEntriesBloc());

  // Home
  locator.registerFactory(
      () => UsersBloc(authManager: locator(), chatsService: locator()));
  locator.registerFactory<IChatsService>(() => ChatsService());

  // core
  locator.registerLazySingleton<IAuthService>(() => FirebaseAuthManager());
  locator.registerLazySingleton(() => AuthBloc(authManager: locator()));
  locator.registerLazySingleton(() => Safe(storage: locator()));
  locator.registerLazySingleton<IUserService>(() => UserService());
  locator.registerFactory(() => UserCubit(service: locator()));
  // external
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(sharedPreferences);
}
