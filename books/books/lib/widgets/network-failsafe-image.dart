import 'package:flutter/material.dart';

class NetworkFailsafeImage extends StatelessWidget {
  final double? width;
  final double? height;
  final String url;
  final String fallbackUrl;
  final String title;
  final BoxFit? fit;
  const NetworkFailsafeImage(
    this.url, {
    this.width,
    this.height,
    this.fallbackUrl = 'assets/images/fallback.jpg',
    this.title = '',
    this.fit,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.network(url, errorBuilder: (ctx, error, stack) {
        return Stack(
          children: [
            Image.asset(
              fallbackUrl,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                      ),
                  maxLines: 3,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
