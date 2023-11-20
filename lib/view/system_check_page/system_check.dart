import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:quinart/component/appbar/home_appbar.dart';
import 'package:quinart/component/home_page/drawer/drawer.dart';
import 'package:quinart/component/footer/admin_footer.dart';
import 'package:quinart/component/footer/home_button.dart';

class SystemCheckPage extends StatelessWidget {
  const SystemCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      endDrawer: const HomePageDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'クイナートシステム 点検管理',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.check),
            title: Text('クイナート本体'),
          ),
          const ListTile(
            leading: Icon(Icons.check),
            title: Text('電源'),
          ),
          const ListTile(
            leading: Icon(Icons.check),
            title: Text('電子パネル'),
          ),
          const ListTile(
            leading: Icon(Icons.check),
            title: Text('LPWA(通信網)'),
          ),
          Expanded(
            child: Center(
              child: InkWell(
                onTap: () {
                  _showImagePopup(context);
                },
                child: PhotoView(
                  imageProvider: const AssetImage(
                    'lib/assets/images/background/system.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const HomePageAdminFooter(),
      floatingActionButton: const FooterHomeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _showImagePopup(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => _ImageDetailPage(),
      ),
    );
  }
}

class _ImageDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PhotoViewGallery.builder(
        itemCount: 1,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: const AssetImage(
              'lib/assets/images/background/system.png',
            ),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.contained * 2.0,
          );
        },
        scrollPhysics: const BouncingScrollPhysics(),
        pageController: PageController(),
      ),
    );
  }
}
