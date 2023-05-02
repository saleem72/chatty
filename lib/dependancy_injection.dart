//

import 'package:chatty/core/data/repositories/auth_service.dart';
import 'package:chatty/core/data/repositories/local_chats.dart';
import 'package:chatty/core/data/repositories/remote_receipts_service.dart';
import 'package:chatty/core/data/repositories/user_service.dart';
import 'package:chatty/core/data/safe/safe.dart';
import 'package:chatty/core/domain/repositories/i_auth_service.dart';
import 'package:chatty/core/domain/repositories/i_local_chats.dart';
import 'package:chatty/core/domain/repositories/i_remote_receipts_service.dart';
import 'package:chatty/core/domain/repositories/i_user_service.dart';
import 'package:chatty/core/presentation/auth_bloc/auth_bloc.dart';
import 'package:chatty/features/auth/login_screen/presentation/bloc/login_entries_bloc.dart';
import 'package:chatty/features/auth/login_screen/presentation/login_bloc/login_bloc.dart';
import 'package:chatty/features/chat_screen/data/repository/user_chat_facade.dart';
import 'package:chatty/features/home_screen/data/facades/chats_facade.dart';
import 'package:chatty/features/home_screen/data/services/users_service.dart';
import 'package:chatty/features/home_screen/domain/facades/i_chats_facade.dart';
import 'package:chatty/features/home_screen/domain/services/i_users_service.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/data/local_datasource/app_database.dart';
import 'core/data/repositories/remote_messaging_service.dart';
import 'core/domain/repositories/i_remote_messaging_service.dart';
import 'features/chat_screen/data/repository/local_user_chats.dart';
import 'features/chat_screen/domain/repository/i_local_user_chats.dart';
import 'features/chat_screen/domain/repository/i_user_chat_facade.dart';
import 'features/chat_screen/presentation/bloc/user_chat_bloc.dart';
import 'features/home_screen/presentation/chats_bloc/chats_bloc.dart';
import 'features/home_screen/presentation/home_bloc/home_bloc.dart';

final locator = GetIt.instance;

Future<void> initDependancies() async {
  // Features
  // Login
  locator.registerFactory(() => LoginBloc(authManager: locator()));
  locator.registerFactory(() => LoginEntriesBloc());

  // Home
  locator.registerFactory(() => HomeBloc(authManager: locator()));
  locator.registerFactory<IUsersService>(
      () => UsersService(db: FirebaseDatabase.instance));

  // core
  locator.registerLazySingleton<IAuthService>(() => FirebaseAuthManager());
  locator.registerLazySingleton(
      () => AuthBloc(authManager: locator(), userService: locator()));
  locator.registerLazySingleton(() => Safe(storage: locator()));
  locator.registerLazySingleton<IUserService>(() => UserService());

  locator.registerFactory(() => ChatsBloc(
        repository: locator(),
        userService: locator(),
      ));
  locator.registerLazySingleton<IChatsFacade>(() => ChatsFacade(
        remoteMessagingService: locator(),
        remoteReceiptService: locator(),
        localDatabase: locator(),
      ));
  // locator.registerSingleton(FirebaseDatabase.instance);
  locator.registerLazySingleton(() => FirebaseDatabase.instance);
  locator.registerFactory<IRemoteReceiptsService>(
      () => RemoteReceiptsService(db: locator()));
  locator.registerLazySingleton<IRemoteMessagingService>(
      () => RemoteMessagingService(db: locator()));
  locator.registerSingleton(AppDatabase());
  locator.registerLazySingleton<ILocalChats>(() => LocalChats(
        db: locator(),
        userService: locator(),
      ));

  locator.registerFactory(() => UserChatBloc(repository: locator()));
  locator.registerFactory<IUserChatFacade>(() =>
      UserChatFacade(remoteMessagingService: locator(), localChats: locator()));
  locator.registerFactory<ILocalUserChats>(() => LocalUserChats(
        db: locator(),
        remoteMessagingService: locator(),
        remoteReceiptService: locator(),
      ));
  // external
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(sharedPreferences);
}
