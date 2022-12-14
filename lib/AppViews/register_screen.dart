import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  Widget TextFieldBuilder(String labeltxt, TextInputType x, Icon s) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          color: Colors.grey[350], borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: labeltxt, border: InputBorder.none, suffixIcon: s),
        keyboardType: x,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 45, bottom: 45),
                alignment: Alignment.topLeft,
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldBuilder(
                  'First Name', TextInputType.name, Icon(Icons.abc)),
              SizedBox(
                height: 20,
              ),
              TextFieldBuilder(
                  'Last Name', TextInputType.name, Icon(Icons.abc)),
              SizedBox(
                height: 20,
              ),
              TextFieldBuilder('Email Address', TextInputType.emailAddress,
                  Icon(Icons.alternate_email)),
              SizedBox(
                height: 20,
              ),
              TextFieldBuilder('Password', TextInputType.visiblePassword,
                  Icon(Icons.password)),
              SizedBox(
                height: 20,
              ),
              TextFieldBuilder('Date of birth', TextInputType.datetime,
                  Icon(Icons.date_range)),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).accentColor,
                ),
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
