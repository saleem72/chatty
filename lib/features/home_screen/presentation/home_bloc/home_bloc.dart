//

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/models/app_user.dart';
import '../../../../core/domain/repositories/i_auth_service.dart';
import '../failure/home_failure.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IAuthService authManager;
  // final IUsersService chatsService;
  HomeBloc({
    required this.authManager,
  }) : super(const _Initial()) {
    on<_Logout>(_onLogout);
  }

  _onLogout(_Logout event, Emitter<HomeState> emit) async {
    authManager.logout();
  }
}
