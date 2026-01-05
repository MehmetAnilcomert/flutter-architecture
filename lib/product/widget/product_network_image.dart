import 'package:common/index.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class LottieCachedNetworkImage extends StatelessWidget {
  const LottieCachedNetworkImage({required this.imageUrl, super.key});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return CustomCachedNetworkImage(
      imageUrl: imageUrl,
      loadingWidget: Assets.lottie.animLiveChatbot.lottie(
        package: 'common',
      ),
    );
  }
}
