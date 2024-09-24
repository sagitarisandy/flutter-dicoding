import 'package:flutter/material.dart';

class SecondScreenWithData extends StatelessWidget {
  final String data;
  
  const SecondScreenWithData({Key? key, required this.data}) :super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(data),
            ElevatedButton(
              child: const Text('Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}