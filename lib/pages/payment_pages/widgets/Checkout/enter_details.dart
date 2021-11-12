// @dart=2.9
import 'package:flutter/material.dart';

class EnterDetails extends StatelessWidget {
  const EnterDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''1. Enter your details''',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1.0,
        fontSize: 36.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
        color: Color.fromARGB(255, 0, 0, 0),

        /* letterSpacing: -0.54, */
      ),
    );
  }
}

TextEditingController emailController = TextEditingController();
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController numberController = TextEditingController();

class FirstName extends StatefulWidget {
  const FirstName({Key key}) : super(key: key);

  @override
  State<FirstName> createState() => _FirstNameState();
}

class _FirstNameState extends State<FirstName> {
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.name,
      controller: firstNameController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            borderSide: BorderSide(color: Colors.black, width: 5.0)),
        labelText: 'First Name',
        hintText: 'First Name',
      ),
    );
  }
}

class LastName extends StatefulWidget {
  const LastName({Key key}) : super(key: key);

  @override
  State<LastName> createState() => _LastNameState();
}

class _LastNameState extends State<LastName> {
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.name,
      controller: lastNameController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            borderSide: BorderSide(color: Colors.black, width: 5.0)),
        labelText: 'Last Name',
        hintText: 'Last Name',
      ),
    );
  }
}

class EmailAdress extends StatefulWidget {
  const EmailAdress({Key key}) : super(key: key);

  @override
  State<EmailAdress> createState() => _EmailAdressState();
}

class _EmailAdressState extends State<EmailAdress> {
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            borderSide: BorderSide(color: Colors.black, width: 5.0)),
        labelText: 'Email',
        hintText: 'Email',
      ),
    );
  }
}

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      controller: numberController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            borderSide: BorderSide(color: Colors.black, width: 5.0)),
        labelText: 'Phone Number',
        hintText: 'Phone Number',
      ),
    );
  }
}

class OTP extends StatefulWidget {
  const OTP({Key key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final TextEditingController code = null;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: code,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            borderSide: BorderSide(color: Colors.black, width: 5.0)),
        hintText: 'OTP',
      ),
    );
  }
}
