import 'package:flutter/material.dart';


class DraggableExample extends StatefulWidget {
  const DraggableExample({Key? key}) : super(key: key);

  @override
  _DraggableExampleState createState() => _DraggableExampleState();
}

class _DraggableExampleState extends State<DraggableExample> {
  String _dragStatus = 'Drag the box!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draggable Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the current drag status
            Text(
              _dragStatus,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Draggable widget with custom data and feedback
            Draggable<String>(
              data: 'Draggable Box', // Custom data to pass along with the drag
              onDragStarted: () {
                setState(() {
                  _dragStatus = 'Dragging started';
                });
              },
              onDraggableCanceled: (_, __) {
                setState(() {
                  _dragStatus = 'Dragging canceled';
                });
              },
              onDragEnd: (details) {
                setState(() {
                  _dragStatus = details.wasAccepted ? 'Dropped successfully' : 'Drag ended without dropping';
                });
              },
              feedback: Material(
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Dragging...',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              childWhenDragging: const SizedBox.shrink(), // Hide the original widget when dragging
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Drag Me!',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Drag Target to accept the draggable widget
            DragTarget<String>(
              onAccept: (data) {
                setState(() {
                  _dragStatus = 'Successfully dropped: $data';
                });
              },
              onWillAccept: (data) {
                setState(() {
                  _dragStatus = 'Ready to accept: $data';
                });
                return true; // Allow the drop
              },
              onLeave: (_) {
                setState(() {
                  _dragStatus = 'Item left the drop area';
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  height: 200,
                  width: 200,
                  color: candidateData.isEmpty ? Colors.green : Colors.orange,
                  alignment: Alignment.center,
                  child: const Text(
                    'Drop Here',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
