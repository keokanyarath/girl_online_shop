
import 'package:flutter/cupertino.dart';

import '../../../core.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    Key? key,
    this.text,
    this.icon,
    this.isTrailing = false,
    this.onTap,
  }) : super(key: key);
  final String? text;
  final IconData? icon;
  final bool isTrailing;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    var txtTheme = Get.theme.textTheme;
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 2.0,
          onTap: onTap,
          tileColor: Get.isDarkMode ? cBlack : cWhite,
          leading: Icon(
            icon,
            color: cR,
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  text!,
                  style: txtTheme.subtitle1!.copyWith(
                    color: Get.isDarkMode ? cWhite : cBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              isTrailing
                  ? Text(
                      'English',
                      style: txtTheme.subtitle1!.copyWith(
                        color: cSecondary,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  : const SizedBox(),
              const Icon(
                CupertinoIcons.right_chevron,
                size: 18.0,
                color: cSecondary,
              ),
            ],
          ),
          // trailing: Icon(
          //   CupertinoIcons.right_chevron,
          //   size: 18.0,
          // ),
        ),
        const SizedBox(height: 1)
      ],
    );
  }
}
