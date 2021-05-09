import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'First Name *',
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return value.length >20 ? 'Limit Exceeded' : null;
            },
          ),

          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'Last Name *',
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return value.length >20 ? 'Limit Exceeded.' : null;
            },
          ),

          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'Phone Number *',
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return value.length >10 ? 'Phone NUmber can be of max 10 digit' : null;
            },
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'Last Name *',
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return value.length >20 ? 'Limit Exceeded.' : null;
            },
          )
        ],
      ),
    );
  }
}
