import 'package:flutter/material.dart';

import 'wid.dart';

const f1 = TextStyle(
    fontFamily: 'Monterrat', fontWeight: FontWeight.w100, color: Colors.white);
const f2 = TextStyle(
    fontFamily: 'Monterrat', fontWeight: FontWeight.w200, color: Colors.white);
const f3 = TextStyle(
    fontFamily: 'Monterrat', fontWeight: FontWeight.w300, color: Colors.white);
const f4 = TextStyle(
  fontFamily: 'Monterrat',
  fontWeight: FontWeight.w400,
  color: Colors.white,
);
const library = [
  'Made For You',
  'Recently Played',
  'Liked Songs',
  'Albums',
  'Artists',
  'Podcasts'
];
const playlist = [
  'Today\'s Top Hits',
  'Discover Weekly',
  'Release Radar',
  'Chill',
  'Background',
  'Lofi hip hop music - beats to relax/study to',
  'Vibes Right Now',
  'Time Capsule',
  'On Repeat',
  'Summer Rewind',
  'Dank Doggo Tunes',
  'Sleepy Doge'
];

const lofiHipHopMusic = [
  Songs(
      id: '0',
      title: 'Snowman',
      artist: 'Wys',
      album: '1 AM. Study Session',
      duration: '3:15'),
  Songs(
      id: '1',
      title: 'Healthy Distraction',
      artist: 'Less People',
      album: 'One day it\'s over',
      duration: '2:18'),
  Songs(
      id: '2',
      title: 'Far Away',
      artist: 'Mila Coolness',
      album: 'Silent River',
      duration: '2:19'),
  Songs(
      id: '3',
      title: 'Call You Soon',
      artist: 'Louk,Glimlip',
      album: 'Can we talk',
      duration: '2:23'),
  Songs(
      id: '4',
      title: 'Winter Sun',
      artist: 'Bcalm banks',
      album: 'Feelings',
      duration: '2:13'),
  Songs(
      id: '5',
      title: 'Hope',
      artist: 'No Spirit',
      album: 'Memories We Made',
      duration: '1:57'),
  Songs(
      id: '6',
      title: 'A Better Place',
      artist: 'Project AER, cxit',
      album: 'Growth Patterns',
      duration: '2:00'),
  Songs(
      id: '7',
      title: 'Misty Dawn',
      artist: 'Blunt One',
      album: 'Autmn in Budapest',
      duration: '2:32'),
  Songs(
      id: '8',
      title: 'Hourgalss',
      artist: 'Thaehan',
      album: 'Hourglass',
      duration: '1:23'),
  Songs(id: '9', title: 'SI', artist: 'God', album: 'Life', duration: '1:00'),
  Songs(
      id: '10',
      title: 'Child',
      artist: 'Ambulo',
      album: 'Ploar',
      duration: '2:54'),
  Songs(
      id: '11',
      title: 'Arizona Zone',
      artist: 'WYS, Sweet Medicine',
      album: 'Evermore',
      duration: '2:32')
];

const lofiHipHopPlaylist = Playlist(
    id: '5-playlist',
    name: 'Lofi hip hop music - beats to relax/study to',
    imageURL: 'lib/Pictures/lofi_boy.jpeg',
    creator: 'Lofi Boy',
    description: 'Long Text',
    duration: '28 min',
    followers: '2,654',
    songs: lofiHipHopMusic);
