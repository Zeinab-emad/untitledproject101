import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

void main() {
 // WidgetsFlutterBinding.ensureInitialized();
  //Firebase.initalizeapp(options: DefaultFirebaseOption.currentPlatform);
  runApp(Mylogin());}

class Mylogin extends StatelessWidget {
  const Mylogin({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScfold(

      ),
    );
  }
}
class MyScfold extends StatefulWidget {
  const MyScfold({super.key});
  @override
  State<MyScfold> createState() => _MyScfoldState();}
class _MyScfoldState extends State<MyScfold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(color: Colors.redAccent,),
      body: SafeArea(
        child: Center(
          child: Container(
                         margin:EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
                FlutterLogo(size:80 ,),
                Text("Logo"),
                SizedBox(height: 50,),
                TextField(
                  decoration: const InputDecoration(
                    filled: true,
                    labelText: 'username',
                  ),
                ),
                const SizedBox(height: 12.0),
                TextField(  decoration: const InputDecoration(
                  filled: true,
                  labelText: 'Password',
                ),
                ),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  TextButton(
                      child: Text('cancel'),
                    onPressed: (){},),
                    ElevatedButton(
                        child :Text('next'),
                        onPressed: (){},),
                ],)
                     ],
            ),
          ),
        ),
      ),
    );
  }
}

