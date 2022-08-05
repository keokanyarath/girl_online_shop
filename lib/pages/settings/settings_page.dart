import 'package:girl_style_shop/pages/ordered/ordered.dart';

import '../../core.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cFill,
      appBar: AppBar(
        backgroundColor: cWarning,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: Container(
                  width: 106.0,
                  height: 106.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: cSecondary,
                    ),
                    shape: BoxShape.circle,
                    color: cR,
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://z-p3-scontent.fpnh5-2.fna.fbcdn.net/v/t39.30808-6/269090153_316737013640446_7869845823160097352_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGTcteOlrRCR4x3HaPoBoRAH7NWkvYBwI0fs1aS9gHAjV63u00Sv3kUu-H023FqHicB2-TrIpHIq0g9miVKk7e2&_nc_ohc=YnCMbtC0L1UAX-G9WvC&tn=ldP6N5pMBlr7u7Zf&_nc_zt=23&_nc_ht=z-p3-scontent.fpnh5-2.fna&oh=00_AT-vg8Nc_a__CQPwwA13eMmev14fEB_Sz1svB1v1OEyr9w&oe=62D81B06',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ItemTile(
            text: "History",
            icon: Icons.lock,
            onTap: () => Get.to(const Ordered()),
          ),
          ItemTile(
            text: "Edit Profile",
            icon: Icons.lock,
            onTap: () => Get.to(const EditProfilePage()),
          ),
          const ItemTile(text: "Change Password", icon: Icons.key),
          const VerticalSpacing(of: 30.0),
          const ItemTile(
            text: "Language",
            icon: Icons.person,
            isTrailing: true,
          ),
          const ItemTile(text: "Feedback", icon: Icons.comment),
          const VerticalSpacing(of: 30.0),
          const ItemTile(text: "Payment", icon: Icons.attach_money),
        ],
      ),
    );
  }
}
