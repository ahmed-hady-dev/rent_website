import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';
import 'package:rent_website/view/publish_asset/component/publish_asset_main_container_mobile.dart';

import 'component/publish_asset_mobile_header.dart';
import 'component/publish_asset_background_image.dart';

class PublishAssetMobile extends StatelessWidget {
  const PublishAssetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const PublishAssetBackgroundImage(isMobile: true),
          Column(
            children: <Widget>[
              const PublishAssetMobileHeader(),
              Padding(
                padding: EdgeInsets.only(top: height * 0.07, bottom: height * 0.05),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: hPaddingMobile),
                  child: SizedBox(
                    width: width,
                    child: const Text("ما هي وجهتك المقبله \nابحث عن اهم العروض المميزه.......",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        )),
                  ),
                ),
              ),
              const PublishAssetMainContainerMobile(),
            ],
          ),
        ],
      ),
    );
  }
}
