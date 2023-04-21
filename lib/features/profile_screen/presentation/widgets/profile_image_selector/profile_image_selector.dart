//

import 'dart:io';

import 'package:chatty/core/presentation/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/presentation/widgets/splash_circular_button.dart';
import 'image_picker_cubit/image_picker_cubit.dart';

class ProfileImageSelector extends StatelessWidget {
  const ProfileImageSelector({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImagePickerCubit(),
      child: _content(context),
    );
  }

  Widget _content(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return AspectRatio(
          aspectRatio: 1,
          child: Stack(
            children: [
              _PickedImage(
                url: state.user?.imageUrl,
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: _PickButton(),
              )
            ],
          ),
        );
      },
    );
  }
}

class _PickButton extends StatefulWidget {
  // const _PickButton({
  //   super.key,
  // });

  const _PickButton();

  @override
  State<_PickButton> createState() => _PickButtonState();
}

class _PickButtonState extends State<_PickButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImagePickerCubit, File?>(
      builder: (context, state) {
        return SizedBox(
          height: 44,
          width: 44,
          child: SplashCircularButton(
            onPressed: () =>
                state == null ? _selectImage(context) : _uploadImage(context),
            foregroundColor: Theme.of(context).colorScheme.secondary,
            splashColor: Theme.of(context).colorScheme.secondaryContainer,
            icon: Center(
              child: Icon(
                state == null ? Icons.edit : Icons.save,
                size: 24,
              ),
            ),
          ),
        );
      },
    );
  }

  _selectImage(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 200,
      maxHeight: 200,
    );
    if (image != null) {
      final temp = File(image.path);
      if (mounted) {
        context.read<ImagePickerCubit>().selectImage(temp);
      }
    }
  }

  _uploadImage(BuildContext context) {
    final image = context.read<ImagePickerCubit>().state;
    if (image != null) {
      context.read<AuthBloc>().add(
          AuthEvent.uploadProfileImage(image: image)); //.uploadImage(image);
    }
  }
}

class _PickedImage extends StatelessWidget {
  const _PickedImage({
    // super.key,
    this.url,
  });
  final String? url;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImagePickerCubit, File?>(
      builder: (context, state) {
        return ClipOval(
          child: Material(
            color: Colors.grey.shade300,
            elevation: 4,
            child: SizedBox(
              height: 100,
              width: 100,
              child: state == null
                  ? _staticIcon()
                  : Image.file(
                      state,
                      fit: BoxFit.fill,
                    ),
            ),
          ),
        );
      },
    );
  }

  Widget _staticIcon() {
    return url == null || (url?.isEmpty ?? false)
        ? const Icon(
            Icons.person,
            size: 75,
            color: Colors.black,
          )
        : Image.network(
            url!,
            fit: BoxFit.fill,
          );
  }
}
