import 'package:app_quran_karim/settings.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({
    super.key,
  });

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}
Color _iconColor = Colors.grey;
bool select =false;
class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/quran.png',
                  height: MediaQuery.of(context).size.height*0.17
                ),
                const Text(
                  'Al Quran',
                  style: TextStyle(fontSize: 20),
                ),

              ],
            ),
          ),

          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text(
              'Settings',
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Settings()));
            },
          ),

          const ListTile(
            leading: Icon(
              Icons.share,
            ),
            title: Text(
              'Share',
            ),

          ),
          ListTile(
            leading: const Icon(
              Icons.rate_review,
            ),
            title: const Text(
              'Rate',
            ),
            onTap: () {
               showDialog(context: context, builder: (context) {
                 return const AlertDialog(
                   title: ListTile(
                     title: Text("Quran App"),
                     subtitle: Text("الشوربجى "),
                   ),

                 );
               },);
            },
          ),
          const ListTile(
            leading: Icon(
              Icons.question_answer_outlined
            ),
            title: Text(
              'About',
            ),

          ),
        ],
      ),
    );
  }
}