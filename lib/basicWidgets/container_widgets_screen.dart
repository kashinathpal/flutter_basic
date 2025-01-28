import 'package:flutter/material.dart';


class ContainerWidgetsScreen extends StatelessWidget {
  const ContainerWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Container Features')),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue,
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(3, 3),
              ),
            ],
            image: const DecorationImage(
              image: NetworkImage('https://via.placeholder.com/150'),
              fit: BoxFit.cover,
            ),
          ),
          transform: Matrix4.rotationZ(-0.1),
          child: const Text(
            'Flutter Container',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
