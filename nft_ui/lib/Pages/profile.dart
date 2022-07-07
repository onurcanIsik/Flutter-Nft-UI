import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nft_ui/Widgets/container.dart';
import 'package:nft_ui/Widgets/grid_widget.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          color: Colors.white,
        ),
        Image.asset("Assets/Images/bg.png"),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 145),
              child: Center(
                child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage("Assets/Images/me.jpg")),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Ionicons.logo_instagram,
                    color: Colors.redAccent,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Ionicons.settings_sharp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Text(
              "Onurcan Işık (Gofy)",
              style: GoogleFonts.comfortaa(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "0x482479235842235772",
                  style: GoogleFonts.balooDa2(
                      fontSize: 16, color: Colors.green[300]),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(6, 1, 0, 0),
                  child: Icon(Ionicons.copy_outline),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                profileContainer("My Cards"),
                profileContainer("Top Cards"),
                profileContainer("Favorite")
              ],
            ),
            const GridWidget()
          ],
        ),
      ],
    );
  }
}
