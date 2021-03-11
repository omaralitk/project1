import 'package:flutter/material.dart';
import 'package:login2/Model/user.dart';
import 'package:login2/View/profile.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //TextEditingController email = TextEditingController();
  List<User> users = [
    User('omar@gmail.com', 'password1'),
    User('ali@gmail.com', 'password2'),
    User('tamer@gmail.com', 'password3'),
    User('khaled@gmail.com', 'password4'),
    User('ahmad@gmail.com', 'password5'),
    User('mohammad@gmail.com', 'password6'),
  ];

  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Casual',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Image.network(
              'https://www.bmwaganassociates.com/wp-content/uploads/2020/12/img_568656.png',
              fit: BoxFit.cover,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (val) {
                        if (val.isEmpty)
                          return 'Fill your Email';
                        else
                          return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          email = val;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        hintText: 'example@demo.com',
                        helperText: 'Your Email must contain @ and .com',
                        hoverColor: Colors.red,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (val) {
                        if (val.isEmpty)
                          return 'Fill your Password';
                        else
                          return null;
                      },
                      onSaved: (val) {
                        setState(() {
                          password = val;
                        });
                      },
                      obscureText: true,
                      maxLength: 20,
                      decoration: InputDecoration(
                        hintText: 'Example123*',
                        helperText:
                        'Your Password must be 6 characters at least',
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    print(email + '  ' + password);
                  }
                  ;
                  user = User(email, password);
                  for (int i = 0; i < users.length; i++) {
                    if (users[i].email == user.email &&
                        users[i].password == user.password)
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>Profile()));

                  }
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );

  }
}
