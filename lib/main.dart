import 'package:flutter/material.dart';
import 'package:spotifyclone/asset.dart';
import 'package:spotifyclone/wid.dart';
import 'screen3.dart';
import 'screen2.dart';
import 'screen1.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  windowManager.setSize(const Size(780, 750));
  windowManager.setMinimumSize(const Size(780, 750));

  runApp(ChangeNotifierProvider(
      create: (context) => CurrentTrackModel(), child: const SpotifyClone()));
}

class SpotifyClone extends StatelessWidget {
  const SpotifyClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spotify clone",
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      home: const Cell1(),
      theme: ThemeData(
          scrollbarTheme: const ScrollbarThemeData(
              thumbColor:
                  MaterialStatePropertyAll(Color.fromARGB(139, 9, 173, 66)))),
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
                if (MediaQuery.of(context).size.width > 850) const Screen1(),
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
