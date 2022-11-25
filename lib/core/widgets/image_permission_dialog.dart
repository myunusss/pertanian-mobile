import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:pertanian/core/const/strings.dart';
import 'package:pertanian/core/utils/image_picker_util.dart';
import 'package:pertanian/core/utils/permission_helper.dart';

import '../style/sizes.dart';
import '../unions/failure.dart';
import '../utils/get_util.dart';

class ImagePermissionDialog extends StatelessWidget {
  final Function(File) pickedImageFile;

  const ImagePermissionDialog({
    Key? key,
    required this.pickedImageFile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(
        horizontal: Sizes.width24,
        vertical: Sizes.height24,
      ),
      child: Container(
        padding: EdgeInsets.all(Sizes.height16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        child: Wrap(
          children: <Widget>[
            Text(
              Strings.titlePickImage,
              style: TextStyle(
                fontSize: Sizes.sp20,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Sizes.height30,
            ),
            ListTile(
                leading: const Icon(Icons.photo_library),
                title: Text(
                  Strings.gallery,
                  style: TextStyle(fontSize: Sizes.sp18),
                ),
                onTap: () async {
                  await PermissionHelper.requestPermissionStorage(
                    onGranted: () async {
                      final result = await ImagePickerUtil.pickGalleryImage();
                      handleImageResult(result);
                    },
                    onDenied: () {
                      log('DENIED');
                    },
                  );

                  GetUtil.dismissDialog();
                }),
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: Text(
                Strings.camera,
                style: TextStyle(fontSize: Sizes.sp18),
              ),
              onTap: () async {
                await PermissionHelper.requestPermissionCamera(
                  onGranted: () async {
                    final result = await ImagePickerUtil.pickCameraImage();
                    handleImageResult(result);
                  },
                  onDenied: () {
                    log('DENIED');
                  },
                );

                // NavigatorUtil.popUntilNew();
                GetUtil.dismissDialog();
              },
            ),
          ],
        ),
      ),
    );
  }

  void handleImageResult(Either<Failure, File> result) {
    result.fold(
      (l) => log('$l'),
      (r) => pickedImageFile(r),
    );
  }
}
