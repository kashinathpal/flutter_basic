// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// class VideoPlayerScreen extends StatefulWidget {
//   const VideoPlayerScreen({Key? key}) : super(key: key);
//
//   @override
//   _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
// }
//
// class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
//   late VideoPlayerController _controller;
//   late Future<void> _initializeVideoPlayerFuture;
//   bool _isMuted = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(
//       'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_30mb.mp4', // Example video URL
//     );
//     _initializeVideoPlayerFuture = _controller.initialize();
//     _controller.setLooping(true); // Loop the video
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
//
//   void _toggleMute() {
//     setState(() {
//       _isMuted = !_isMuted;
//       _controller.setVolume(_isMuted ? 0 : 1); // Mute or unmute the video
//     });
//   }
//
//   void _togglePlayPause() {
//     setState(() {
//       if (_controller.value.isPlaying) {
//         _controller.pause();
//       } else {
//         _controller.play();
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Video Player Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // FutureBuilder to ensure the video is initialized
//             FutureBuilder<void>(
//               future: _initializeVideoPlayerFuture,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return const CircularProgressIndicator(); // Show loading indicator
//                 } else if (snapshot.hasError) {
//                   return Text('Error: ${snapshot.error}'); // Error handling
//                 } else {
//                   return AspectRatio(
//                     aspectRatio: _controller.value.aspectRatio,
//                     child: VideoPlayer(_controller), // Video player widget
//                   );
//                 }
//               },
//             ),
//             const SizedBox(height: 20),
//             // Play/Pause Button
//             IconButton(
//               icon: Icon(
//                 _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//                 size: 50,
//                 color: Colors.blue,
//               ),
//               onPressed: _togglePlayPause,
//             ),
//             const SizedBox(height: 20),
//             // Mute Button
//             IconButton(
//               icon: Icon(
//                 _isMuted ? Icons.volume_off : Icons.volume_up,
//                 size: 50,
//                 color: Colors.blue,
//               ),
//               onPressed: _toggleMute,
//             ),
//             const SizedBox(height: 20),
//             // Display Video Progress
//             VideoProgressIndicator(
//               _controller,
//               allowScrubbing: true, // Allow the user to scrub through the video
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
