import 'package:flutter/material.dart';

class PublishAssetMainText extends StatelessWidget {
  const PublishAssetMainText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('قم بعرض عقارك علي بيتك....',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.ellipsis,
              )),
          Text('واستمتع بطريقة عرض مميزه جدا.......',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.ellipsis,
              ))
        ],
      ),
    );
  }
}
