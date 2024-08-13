import 'dart:io';
import 'dart:ui';

import 'package:anju/config/utils/images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class AnjuPickImage extends StatefulWidget {
  const AnjuPickImage({super.key, required this.onPickImage});
  final void Function(XFile) onPickImage;
  @override
  State<AnjuPickImage> createState() => _AnjuPickImageState();
}

class _AnjuPickImageState extends State<AnjuPickImage> {
  final ImagePicker picker = ImagePicker();

  XFile? image;

  void getImage() async {
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      image = picked;
      setState(() {});
      widget.onPickImage(picked);
    }
  }

  @override
  void dispose() {
    image = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (image != null) {
      return GestureDetector(
          onTap: getImage,
          child: Card(
              clipBehavior: Clip.hardEdge,
              child: Image.file(
                File(image!.path),
              )));
    } else {
      return GestureDetector(
        onTap: getImage,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Card(
                  color: Colors.grey.shade400,
                  shadowColor: Colors.black,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.width * 0.75,
                  )),
            ),
            SvgPicture.asset(
              width: 60,
              height: 60,
              AnjuSvg.gallery,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ],
        ),
      );
    }
  }
}
