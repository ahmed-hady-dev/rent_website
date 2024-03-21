import 'package:flutter/material.dart';
import 'package:rent_website/constants/app_const.dart';

class PublishAssetBackgroundImage extends StatelessWidget {
  const PublishAssetBackgroundImage({super.key});

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
              opacity: 0.5,
              child: Container(
                color: Colors.black,
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
    'https://s3-alpha-sig.figma.com/img/bfd3/2c26/dbca4c24621efd05a0fb29f17d62e597?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GSG6hOGmgGtxTm0ytGy6Bm63qidXL4ReKrl~P5~DzAxrERLuA8YL2OzrkWYOdwlniJqdQCe7BWY0BPWHJuLv5OF4WW1OdjgsbFNXsWTGOs7Tf5fDi7oaonJAP1pTa~HX3z9cm66wvurR5BzeAXahU3zU6Q96-DdYnortxoyMvpa6qROWHXjArMuJkCm0LvYQEUAoq1DfZX~EcRmE4-6cPzff90zswB18m8vYddzQ2uM3dU0oAt7np9mPSfkcIDUApRYEFzusZJ8~SF3hEDrDq82PZM16UVDJMHVOuzDP4GaaqamaF~H5mWTuy80eMftsPXaCJl6mP2gJF9fWhOj5UQ__';
