import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var _formkey = GlobalKey<FormState>();
  // new way to associate input with variables
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      // the key declared is defined here
      key: _formkey,
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                TextFormField(
                  // controller is used to automatically update without
                  // using setState
                  controller: username,
                  // validator function when return string means error
                  // when null there is no error
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      label: Text('Username'), 
                      border: OutlineInputBorder()),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6),
                  child: TextFormField(
                    // obsure text is for displaying dots instead of text
                    obscureText: true,
                    controller: password,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        label: Text('Password'),
                        border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // this initiates validation form the text input field inside the form
                if(_formkey.currentState!.validate()){
                  String message = "";
                  if(username.text == 'admin' && password.text == "admin"){
                    message = "Success";
                  Navigator.of(context).popAndPushNamed('/home');

                  }else{
              // disply message 
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Invalid username or password",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  );
                  }

                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          TextButton(onPressed: (){
            Navigator.of(context).pushNamed('/signup');
          },
          child: const Text('Don\'t have an account? Sign up')
          ), 
        ],
      ),
    );
  }
}
