import 'package:flutter/material.dart';
import 'package:spotifyclone/asset.dart';
import 'package:spotifyclone/wid.dart';
import 'screen3.dart';
import 'screen2.dart';
import 'screen1.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider(
      create: (context) => CurrentTrackModel(), child: const SpotifyClone()));
}

class SpotifyClone extends StatelessWidget {
  const SpotifyClone({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Spotify clone",
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      home: Cell1(),
    );
  }
}

class Cell1 extends StatefulWidget {
  const Cell1({super.key});

  @override
  State<Cell1> createState() => _Cell1State();
}

class _Cell1State extends State<Cell1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                if (MediaQuery.of(context).size.width > 800) const Screen1(),
                const Expanded(
                  child: Screen2(
                    playlist: lofiHipHopPlaylist,
                  ),
                )
              ],
            ),
          ),
          const Screen3(),
        ],
      ),
    );
  }
}
