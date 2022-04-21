import 'package:flutter/material.dart';
import 'package:flutter_widgets1/homeScreen.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  "https://www.mega.edu.au/wp-content/uploads/2018/12/WeChat-Image_20181130153037.jpg",
                  width: 200,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: "Name",
                      hintText: "Enter your name",
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.person),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: "Phone",
                      hintText: "Enter your phone number",
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.phone),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: "Birthday",
                      hintText: "Enter your date of birth",
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.calendar_today),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RaisedButton(
                    color: Colors.deepPurple,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>const HomeScreen()));
                    },
                    child: const SizedBox(
                        height: 50,
                        width: 120,
                        child:  Center(
                          child: Text(
                            "Register",
                            style: TextStyle(fontSize: 16,color: Colors.white),
                          ),
                        )),
                  ),

                  // child: ElevatedButton(onPressed: (){}, child: Text("Sign Up"),style: ButtonStyle(
                  //   minimumSize:MaterialStateProperty.all(Size(120,50),)
                  // ),),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
