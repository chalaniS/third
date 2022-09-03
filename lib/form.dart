import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  final _formKey = GlobalKey<FormState>();

  late String _name;
  late String _email;
  late String _mobile;
  late String _password;

  Widget _buildNameField(){
    return  TextFormField(
      decoration: const InputDecoration(
        prefixIcon:  Icon(Icons.accessibility_new),
        hintText: 'Name...',
      ),
      cursorColor: Colors.blue,
      maxLength: 80,
      autofocus: true,
      onSaved: (text){
        _name = text!;
        if (kDebugMode) {
          print(_name);

        }},
      validator: (text){
        HelperValidator.nameValidate(text!);
        return null;
      },

    );
  }

  Widget _buildEmailField(){
    return  TextFormField(
      decoration: const InputDecoration(
        prefixIcon:  Icon(Icons.email),
        hintText: 'Email...',
      ),
      maxLength: 80,
      onSaved: (text){
        _email = text!;
        if (kDebugMode) {
          print(_email);
        }
      },
      validator: (text){
        if(text!.isEmpty){
          return "Email can not be empty";
        }
        return null;
      },
    );
  }

  Widget _buildMobileField(){
    return  TextFormField(
      decoration: const InputDecoration(
        prefixIcon:  Icon(Icons.phone),
        hintText: 'Mobile Number...',
      ),
      maxLength: 10,
      keyboardType: TextInputType.number,
      onSaved: (text){
        _mobile = text!;
        if (kDebugMode) {
          print(_mobile);
        }
      },
      validator: (text){
        if(text!.isEmpty){
          return "Mobile Number can not be empty";
        }
        return null;
      },
    );
  }

  Widget _buildPassWordField(){
    return  TextFormField(
      decoration: const InputDecoration(
        prefixIcon:  Icon(Icons.password_rounded),
        hintText: 'Password...',
      ),
      obscureText: true,
      maxLength: 8,
      onSaved: (text){
        _email = text!;
      },
      validator: (text){
        if(text!.isEmpty){
          return "Password can not be empty";
        }
        return null;
      },
    );
  }

  Widget _buildConfirmPassWordField(){
    return  TextFormField(
      decoration: const InputDecoration(
        prefixIcon:  Icon(Icons.password_sharp),
        hintText: 'Confirm Password...',
      ),
      obscureText: true,
      maxLength: 8,
      validator: (text){

        if(text!.isEmpty) {
          return "Confirm Password can not be empty";
        }
        else if (_password == text) {
          return "Password is not matched";
        }
        else {
          return null;
        }

      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Fill this form"),
        ),

      body: SingleChildScrollView(
        child: Form(
          key: _formKey ,
          child: Container(
            margin: const EdgeInsets.all(25.0),
            child: Column(
              children:  <Widget>[
                _buildNameField(),
                _buildEmailField(),
                _buildMobileField(),
                _buildPassWordField(),
                _buildConfirmPassWordField(),

                const SizedBox(
                  height: 300,
                ),
                ElevatedButton(
                    onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      if (kDebugMode) {
                        print(_name);
                      }
                    }
                  },
                 child: const Text(
                   'Submit',
                   style: TextStyle(
                     color: Colors.yellowAccent,
                     fontSize: 16.0,
                   ),
                 ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HelperValidator {
  static String nameValidate(String value){
    if (kDebugMode) {
      print(value);
    }

    if(value.isEmpty){
      return "Name can not be empty";
    }


      return value;

  }
}
