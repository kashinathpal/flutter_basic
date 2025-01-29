// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// class AudioPlayerScreen extends StatefulWidget {
//   const AudioPlayerScreen({Key? key}) : super(key: key);
//
//   @override
//   _AudioPlayerScreenState createState() => _AudioPlayerScreenState();
// }
//
// class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
//   late AudioPlayer _audioPlayer;
//   bool _isPlaying = false;
//   bool _isLooping = false;
//   bool _isMuted = false;
//   bool _isPaused = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _audioPlayer = AudioPlayer();
//     _audioPlayer.setReleaseMode(ReleaseMode.STOP); // Automatically stop on finish
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _audioPlayer.dispose(); // Dispose when done
//   }
//
//   // Play Audio
//   void _playAudio() async {
//     int result = await _audioPlayer.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'); // Network Audio URL
//     if (result == 1) {
//       setState(() {
//         _isPlaying = true;
//         _isPaused = false;
//       });
//     }
//   }
//
//   // Pause Audio
//   void _pauseAudio() async {
//     int result = await _audioPlayer.pause();
//     if (result == 1) {
//       setState(() {
//         _isPlaying = false;
//         _isPaused = true;
//       });
//     }
//   }
//
//   // Stop Audio
//   void _stopAudio() async {
//     int result = await _audioPlayer.stop();
//     if (result == 1) {
//       setState(() {
//         _isPlaying = false;
//         _isPaused = false;
//       });
//     }
//   }
//
//   // Toggle Mute
//   void _toggleMute() {
//     setState(() {
//       _isMuted = !_isMuted;
//       _audioPlayer.setVolume(_isMuted ? 0 : 1); // Mute or unmute
//     });
//   }
//
//   // Toggle Looping
//   void _toggleLooping() {
//     setState(() {
//       _isLooping = !_isLooping;
//       _audioPlayer.setReleaseMode(_isLooping ? ReleaseMode.LOOP : ReleaseMode.STOP); // Set looping
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Audio Player Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Audio Player',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Play Button
//                 IconButton(
//                   icon: const Icon(Icons.play_arrow),
//                   onPressed: _isPlaying ? null : _playAudio,
//                   iconSize: 40,
//                 ),
//                 const SizedBox(width: 20),
//                 // Pause Button
//                 IconButton(
//                   icon: const Icon(Icons.pause),
//                   onPressed: _isPlaying ? _pauseAudio : null,
//                   iconSize: 40,
//                 ),
//                 const SizedBox(width: 20),
//                 // Stop Button
//                 IconButton(
//                   icon: const Icon(Icons.stop),
//                   onPressed: _isPlaying || _isPaused ? _stopAudio : null,
//                   iconSize: 40,
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             // Mute/Unmute Button
//             IconButton(
//               icon: Icon(_isMuted ? Icons.volume_off : Icons.volume_up),
//               onPressed: _toggleMute,
//               iconSize: 40,
//             ),
//             const SizedBox(height: 20),
//             // Loop Toggle Button
//             IconButton(
//               icon: Icon(
//                 _isLooping ? Icons.repeat : Icons.repeat_one,
//                 color: _isLooping ? Colors.blue : Colors.black,
//               ),
//               onPressed: _toggleLooping,
//               iconSize: 40,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
