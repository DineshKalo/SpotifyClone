import 'package:flutter/material.dart';
import 'package:spotifyclone/asset.dart';
import 'package:spotifyclone/wid.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.1,
        color: const Color.fromARGB(255, 15, 15, 15),
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 260, child: Trackinfo()),
                PlayerControls(),
                MoreOptions()
              ]),
        ));
  }
}

class Trackinfo extends StatelessWidget {
  const Trackinfo({super.key});

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentTrackModel>().selected;
    if (selected == null) return const SizedBox.shrink();
    return Row(
      children: [
        Image.asset(
          'lib/Pictures/Lofi_boy.jpeg',
          height: 60,
          width: 60,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selected.title,
              style: f4.copyWith(fontSize: 16),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              selected.artist,
              style: f4.copyWith(fontSize: 12),
            )
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            ))
      ],
    );
  }
}

class PlayerControls extends StatelessWidget {
  const PlayerControls({super.key});

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentTrackModel>().selected;
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              iconSize: 20,
              icon: Icon(
                Icons.shuffle,
                color: Colors.white,
              ),
              padding: EdgeInsets.only(),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 20,
              icon: Icon(
                Icons.skip_previous_outlined,
                color: Colors.white,
              ),
              padding: EdgeInsets.only(),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(
                Icons.play_circle,
                color: Colors.white,
              ),
              padding: EdgeInsets.only(),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 20,
              icon: Icon(
                Icons.skip_next_outlined,
                color: Colors.white,
              ),
              padding: EdgeInsets.only(),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 20,
              icon: Icon(
                Icons.repeat_outlined,
                color: Colors.white,
              ),
              padding: EdgeInsets.only(),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '0:00',
              style: f4,
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              height: 5,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(2.5)),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              selected?.duration ?? '0:00',
              style: f4,
            )
          ],
        )
      ],
    );
  }
}

class MoreOptions extends StatelessWidget {
  const MoreOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.devices_outlined,
              color: Colors.white,
              size: 20,
            )),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.volume_up_outlined,
                  color: Colors.white,
                )),
            Container(
              height: 5,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2.5)),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.fullscreen_outlined,
                  color: Colors.white,
                )),
          ],
        )
      ],
    );
  }
}
