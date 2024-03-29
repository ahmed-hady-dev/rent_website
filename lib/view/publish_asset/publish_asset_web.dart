import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/view/publish_asset/component/publish_asset_main_container_web.dart';

import '../../components/desktop_header.dart';
import 'component/publish_asset_background_image.dart';
import 'component/publish_asset_main_text.dart';

class PublishAssetWeb extends StatelessWidget {
  const PublishAssetWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const PublishAssetBackgroundImage(),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: DesktopHeader(),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: hPaddingWeb),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  PublishAssetMainText(),
                  PublishAssetMainContainerWeb(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
