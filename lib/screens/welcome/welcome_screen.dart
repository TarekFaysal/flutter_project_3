import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController firstNameEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Screen"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (EmailValidator.validate(value)) {
                      return null;
                    } else {
                      return "Please enter a valid email";
                    }
                  },
                  controller: emailEditingController,
                  decoration:
                      InputDecoration(hintText: "Email", labelText: "Email *"),
                ),
                TextFormField(
                  validator: (value) {
                    if (value.length > 8) {
                      return null;
                    } else {
                      return "Password must be a minimum of 8 characters";
                    }
                  },
                  obscureText: true,
                  controller: passwordEditingController,
                  decoration: InputDecoration(
                      hintText: "Password", labelText: "Password *"),
                ),
                //first name
                TextFormField(
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Please enter first name";
                    }
                  },
                  obscureText: true,
                  controller: firstNameEditingController,
                  decoration: InputDecoration(
                      hintText: "First Name", labelText: "First Name *"),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        String email = emailEditingController.text;
                        String password = passwordEditingController.text;
                        print(email + password);
                      }
                    },
                    child: Text("Log In"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
