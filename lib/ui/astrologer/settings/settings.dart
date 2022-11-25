import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:updesh/components/app_bar.dart';
import 'package:updesh/ui/astrologer/myAccount/components/my_account_components.dart';
import 'package:updesh/utils/colors.dart';
import 'package:updesh/utils/images.dart';
import 'package:updesh/utils/ts.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(75.h),
          child: const CommonAppBar(
            tittle: 'Settings',
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
        child: Column(
          children: [
            Row(
              children: [
                Text('Notifications', style: Ts.medium16(AppColors.textColor5)),
                const Spacer(
                  flex: 1,
                ),
                Switch(
                    value: switchValue,
                    onChanged: ((value) {
                      setState(() {
                        switchValue = value;
                      });
                    }))
              ],
            ),
            const MyAccountComponents(
              tittle: 'Share App',
              icon: ImageIcon(
                  size: 20,
                  color: AppColors.grey2,
                  AssetImage(
                    AppImages.share,
                  )),
            ),
            const SizedBox(
              height: 16,
            ),
            const MyAccountComponents(
              tittle: 'Delete My Account',
              icon: Icon(
                Icons.delete_outline_outlined,
                color: AppColors.red2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
