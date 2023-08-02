import 'package:flutter/material.dart';
import 'package:spotifyclone/asset.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: MediaQuery.of(context).size.width * 0.20,
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          Image.asset(
            'lib/Pictures/Spotify_logo.png',
            height: 55,
            filterQuality: FilterQuality.high,
          ),
          const SizedBox(
            height: 20,
          ),
          List1(
            iconData: Icons.home,
            text: 'Home',
            ontap: () {},
          ),
          List1(
            iconData: Icons.search,
            text: 'Search',
            ontap: () {},
          ),
          List1(
            iconData: Icons.audiotrack,
            text: 'Radio',
            ontap: () {},
          ),
          const SizedBox(
            height: 12,
          ),
          const Libraryplaylist()
        ],
      ),
    );
  }
}

class List1 extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback ontap;
  const List1({
    super.key,
    required this.iconData,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Colors.white,
        size: 28,
      ),
      title: Text(
        text,
        style: f4,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: ontap,
    );
  }
}

class Libraryplaylist extends StatefulWidget {
  const Libraryplaylist({super.key});

  @override
  State<Libraryplaylist> createState() => _LibraryplaylistState();
}

class _LibraryplaylistState extends State<Libraryplaylist> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        isAlwaysShown: true,
        thickness: 12,
        controller: scrollController,
        child: ListView(
          controller: scrollController,
          physics: const ClampingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 14, bottom: 8),
                  child: Text(
                    'YOUR LIBRARY',
                    style: f4,
                  ),
                ),
                ...library
                    .map((e) => ListTile(
                          dense: true,
                          title: Text(
                            e,
                            style: f1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: () {},
                        ))
                    .toList(),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 14, bottom: 8),
                  child: Text(
                    'PLAYLIST',
                    style: f4,
                  ),
                ),
                ...playlist
                    .map((e) => ListTile(
                          dense: true,
                          title: Text(
                            e,
                            style: f1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: () {},
                        ))
                    .toList(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
