import 'package:flutter/material.dart';
import 'wid.dart';
import 'asset.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatefulWidget {
  final Playlist playlist;
  const Screen2({super.key, required this.playlist});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leadingWidth: 140,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.black26, shape: BoxShape.circle),
                  child: Icon(
                    Icons.chevron_left,
                    size: 23,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.black26, shape: BoxShape.circle),
                  child: Icon(
                    Icons.chevron_right,
                    size: 23,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {},
              icon: Icon(
                Icons.account_circle_outlined,
                size: 30,
              ),
              label: Text(
                'Dinesh',
              )),
          SizedBox(
            width: 8,
          ),
          IconButton(
              padding: EdgeInsets.only(),
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_down,
                size: 30,
              )),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 0.80,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromARGB(255, 86, 255, 80), Colors.black],
                stops: [0, 0.6])),
        child: Scrollbar(
          isAlwaysShown: true,
          controller: _scrollController,
          thickness: 10,
          child: ListView(
            controller: _scrollController,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            children: [
              PlaylistHeader(
                playlist: widget.playlist,
              ),
              SizedBox(
                height: 20,
              ),
              _PlaylistButtons(
                followers: lofiHipHopPlaylist.followers,
              ),
              TrackList(tracks: widget.playlist.songs)
            ],
          ),
        ),
      ),
    );
  }
}

class _PlaylistButtons extends StatelessWidget {
  final String followers;

  const _PlaylistButtons({super.key, required this.followers});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 48, vertical: 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Colors.green,
            primary: Colors.white,
            textStyle: f4.copyWith(fontSize: 12, letterSpacing: 2),
          ),
          onPressed: () {},
          child: Text('Play'),
        ),
        const SizedBox(
          width: 8,
        ),
        IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            )),
        IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.white,
            )),
        Spacer(),
        Text(
          'FOLLOWERS\n$followers',
          style: f4.copyWith(fontSize: 14),
          textAlign: TextAlign.right,
        )
      ],
    );
  }
}

class TrackList extends StatelessWidget {
  final List<Songs> tracks;

  const TrackList({super.key, required this.tracks});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingTextStyle: f4.copyWith(fontSize: 12),
      showCheckboxColumn: false,
      columns: const [
        DataColumn(
            label: Text(
          'TITLE',
          style: f4,
        )),
        DataColumn(
            label: Text(
          'ARTIST',
          style: f4,
        )),
        DataColumn(
            label: Text(
          'ALBUMB',
          style: f4,
        )),
        DataColumn(
            label: Icon(
          Icons.access_time,
          color: Colors.white,
        ))
      ],
      rows: tracks.map((e) {
        final selected =
            context.watch<CurrentTrackModel>().selected?.id == e.id;
        final textstyle =
            TextStyle(color: selected ? Colors.green : Colors.white);
        return DataRow(
          cells: [
            DataCell(Text(
              e.title,
              style: textstyle,
            )),
            DataCell(Text(
              e.artist,
              style: textstyle,
            )),
            DataCell(Text(
              e.album,
              style: textstyle,
            )),
            DataCell(Text(
              e.duration,
              style: textstyle,
            )),
          ],
          selected: selected,
          onSelectChanged: (value) =>
              context.read<CurrentTrackModel>().selectsong(e),
        );
      }).toList(),
    );
  }
}
