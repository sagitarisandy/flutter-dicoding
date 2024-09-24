import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicoding',
      theme: ThemeData(
        fontFamily: 'Quicksand',
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const loginPage(),
    );
  }
}

class loginPage extends StatefulWidget{
  const loginPage({Key? key}) :super(key: key);

  @override
  State<loginPage>createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(child: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 300.0),
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: [
                  Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/1200px-Google_2015_logo.svg.png',
                    width: 100,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Sign In',
                style: Theme.of(context).textTheme .headline4! .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15
                ),
              Text(
                'With your Google Account. You\'ll also sign in to Google services in your app',
                style: Theme.of(context).textTheme .headline4! .copyWith(color: Colors.grey[800], fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(
                  height: 15
                ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue[800] ?? Colors.blue,
                      width: 2.0)
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0)
                  ),
                  isDense: true,
                ),
              ),
              const SizedBox(height: 16),
            Text(
              'Forgot email?',
                style: Theme.of(context).textTheme .headline4! .copyWith(color: Colors.blue[400], fontWeight: FontWeight.w400, fontSize: 16),
              ),
            const SizedBox(
              height: 32
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'More options',
                    style: Theme.of(context).textTheme .headline4! .copyWith(color: Colors.blue[400], fontWeight: FontWeight.w400, fontSize: 16),
                ),
                TextButton(
                  onPressed: () {

                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32)
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      // color: Colors.blue[800],
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                    ),
                  )
                  )
              ],
            )
            ],
          ),
          ),
      ),
      )),
    );
  }
}

class MenuTile extends StatelessWidget {
  final String title;

  const MenuTile({Key? key, required this.title}) :super (key: key);

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context)
          .textTheme
          .bodyText1
          // .copyWith(fontWeight: FontWeight.bold),
      ),
        trailing: const Icon(
        Icons.navigate_next,
        color: Colors.black,
        )
    );
  }
}
