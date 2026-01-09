import 'package:common/index.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// A widget that displays a Lottie animation from a network URL with caching support.
class LottieCachedNetworkImage extends StatelessWidget {
  /// Creates a [LottieCachedNetworkImage] widget.
  const LottieCachedNetworkImage({required this.imageUrl, super.key});

  /// The URL of the Lottie animation to display.
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
