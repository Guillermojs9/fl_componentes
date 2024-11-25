import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(backgroundColor: Colors.white54, child: Text("GRL"),),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage("https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fimg08.deviantart.net%2F5e09%2Fi%2F2012%2F353%2Fd%2F9%2Fdbz_son_goku___face__by_chrisemerald_chaos_z-d5oimcd.png&f=1&nofb=1&ipt=c133151faeab1691d3d50a6d679112ede3eedf7a23345589ab01c4ae032ca898&ipo=images"),
          maxRadius: 150,
        ),
      ),
    );
  }
}
