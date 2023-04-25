//

import 'package:chatty/dependancy_injection.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/presentation/chats_bloc/chats_bloc.dart';

class ChatsListView extends StatelessWidget {
  const ChatsListView({
    super.key,
    required this.userId,
  });
  final String userId;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
