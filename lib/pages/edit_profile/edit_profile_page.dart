import '../../core.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cWarning,
        title: const Text(
          'Edit Profle',
          style: TextStyle(
            color: cBlack,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                const VerticalSpacing(),
                Container(
                  height: 100.0,
                  width: 100.0,
                  margin: const EdgeInsets.only(top: kDefaultPadding),
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        radius: 90.0,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                          'https://z-p3-scontent.fpnh5-2.fna.fbcdn.net/v/t39.30808-6/269090153_316737013640446_7869845823160097352_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGTcteOlrRCR4x3HaPoBoRAH7NWkvYBwI0fs1aS9gHAjV63u00Sv3kUu-H023FqHicB2-TrIpHIq0g9miVKk7e2&_nc_ohc=YnCMbtC0L1UAX-G9WvC&tn=ldP6N5pMBlr7u7Zf&_nc_zt=23&_nc_ht=z-p3-scontent.fpnh5-2.fna&oh=00_AT-vg8Nc_a__CQPwwA13eMmev14fEB_Sz1svB1v1OEyr9w&oe=62D81B06',
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            color: cBlack,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const VerticalSpacing(of: 50.0),
                const KVTextFormField(
                  label: "Name",
                  hitText: 'Your Name',
                ),
                const KVTextFormField(
                  label: "Phone",
                  hitText: 'Phone Number',
                ),
                const VerticalSpacing(),
                KVButton(
                  text: 'Update',
                  press: () {
                    Get.back();
                    Get.snackbar(
                      'Hello',
                      "Your rofile has been update!!!",
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: cR,
                      colorText: cWhite,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
