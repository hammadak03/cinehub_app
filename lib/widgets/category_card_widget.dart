import 'package:cinehub_app/utils/colors.dart';
import 'package:cinehub_app/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoryCardWidget extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const CategoryCardWidget({
    required this.onTap,
    required this.title,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CachedNetworkImage(
            imageUrl: imagePath,
            imageBuilder: (context, imageProvider) => Container(
              width: MediaQuery.of(context).size.width * 0.475,
              height: MediaQuery.of(context).size.height * 0.145,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
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
      ),
    );
  }
}
