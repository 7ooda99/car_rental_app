import 'package:flutter/material.dart';

import '../../../utils/constant.dart';
import '../../widgets/text_widget.dart';

class ListTileWidget extends StatelessWidget {
  String title;
  Widget? subTitle;
  Widget leadingIcon;
  Widget? trailingIcon;
  VoidCallback? onTap;
  ListTileWidget({
    Key? key,
    @required this.subTitle,
    required this.title,
    required this.leadingIcon,
     this.trailingIcon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(title),
      isThreeLine: false,
      subtitle: subTitle,
      leading: leadingIcon,
      trailing: trailingIcon,
    );
  }
}
