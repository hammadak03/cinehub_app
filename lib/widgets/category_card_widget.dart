// ignore: must_be_immutable
import 'package:cinehub_app/utils/colors.dart';
import 'package:cinehub_app/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryCardWidget extends StatelessWidget {
  String title;
  String imagePath;
  CategoryCardWidget({required this.title, required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.475,
          height: MediaQuery.of(context).size.height * 0.145,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(imagePath),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.475,
          height: MediaQuery.of(context).size.height * 0.145,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(
              colors: [Colors.black54, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          left: 10,
          child: CustomTextWidget(
            text: title,
            fontColor: whiteColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            fontType: 'Poppins',
          ),
        ),
      ],
      // ),
    );
  }
}
