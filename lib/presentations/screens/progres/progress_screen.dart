import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Progres Indicators')),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Circular progress indicators'),
          SizedBox(height: 20),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black45,
          ),
          SizedBox(height: 20),
          Text('Progress Circular y Linear indicators controlado'),
          SizedBox(height: 20),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(milliseconds: 300), (value) {
        return (value*5) / 100; // 0.0-->1.0
      }).takeWhile((valux) => valux < 1),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                backgroundColor: Colors.black12,
              ),
              SizedBox(width: 20),
              Expanded
              (child: LinearProgressIndicator(value: progressValue,)),
            ],
          ),
        );
      },
    );
  }
}
