import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

class PublishAssetBackgroundImage extends StatelessWidget {
  final bool isMobile;
  const PublishAssetBackgroundImage({super.key, this.isMobile = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            Image.network(
              publishAssetBackgroundUrl,
              height: height,
              width: width,
              fit: BoxFit.cover,
            ),
            Opacity(
              opacity: isMobile ? 1 : 0.5,
              child: Container(
                color: isMobile ? const Color(0xff27273f80) : Colors.black,
                width: width,
                height: height,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

String publishAssetBackgroundUrl =
    'https://images.unsplash.com/photo-1551633327-48d92d69cf9c?q=80&w=1936&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
