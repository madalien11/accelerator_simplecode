import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';

class NoAvatarWidget extends StatelessWidget {
  const NoAvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: ClipOval(
        // foregroundImage: AssetImage(
        //   AppAssets.images.noAvatar,
        // ),
        child: Image.asset(
          AppAssets.images.noAvatar,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
