import 'package:flutter/material.dart';

class ReturnDataScreens extends StatefulWidget {
  const ReturnDataScreens({Key? key}) : super (key: key);

  @override
  State<ReturnDataScreens> createState() => _ReturnDataScreenState();
}

class _ReturnDataScreenState extends State<ReturnDataScreens> {
  final _textController = TextEditingController();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(labelText: 'Enter Your Name '),
              ),
            ),
            ElevatedButton(
              child: const Text('Send'),
              onPressed: (){
                Navigator.pop(context, _textController.text);
              },
            )
          ],
        ),
      ),
    );
  }
  
  @override
  void dispose(){
    _textController.dispose();
    super.dispose();
  }
}



