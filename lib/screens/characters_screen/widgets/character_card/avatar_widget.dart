import 'package:flutter/material.dart';

import '../../../../constants/app_assets.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    this.url,
  }) : super(key: key);
  final String? url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: ClipOval(
        child: url != null
            ? Image.network(
                url!,
                fit: BoxFit.cover,
              )
            : Image.asset(
                AppAssets.images.noAvatar,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
