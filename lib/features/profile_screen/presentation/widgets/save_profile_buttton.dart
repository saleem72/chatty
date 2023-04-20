//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/profile_data_bloc.dart';

class SaveProfileButtton extends StatelessWidget {
  const SaveProfileButtton({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileDataBloc, ProfileDataState>(
      builder: (context, state) {
        return IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.check_circle_outline,
            color: state.isValid() ? Colors.white : Colors.white54,
          ),
        );
      },
    );
  }
}
