import 'package:flutter/material.dart';
import 'asset.dart';

class Songs {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String duration;

  const Songs({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.duration,
  });
}

class Playlist {
  final String id;
  final String name;
  final String imageURL;
  final String description;
  final String creator;
  final String duration;
  final String followers;
  final List<Songs> songs;

  const Playlist(
      {required this.id,
      required this.name,
      required this.imageURL,
      required this.creator,
      required this.description,
      required this.duration,
      required this.followers,
      required this.songs});
}

class PlaylistHeader extends StatelessWidget {
  final Playlist playlist;

  const PlaylistHeader({super.key, required this.playlist});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          playlist.imageURL,
          height: 200,
          width: 200,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PLAYLIST',
              style: f4.copyWith(fontSize: 12),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              playlist.name,
              style: f3.copyWith(fontSize: 40),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              playlist.description,
              style: f1,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Created by ${playlist.creator} * ${playlist.songs.length} songs, ${playlist.duration}...',
              style: f2,
            ),
          ],
        ))
      ],
    );
  }
}

class CurrentTrackModel extends ChangeNotifier {
  Songs? selected;

  void selectsong(Songs track) {
    selected = track;
    notifyListeners();
  }
}
