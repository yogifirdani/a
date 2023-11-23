// // ignore_for_file: unused_local_variable

// import 'dart:io';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(TambahMyPets());
// }

// class TambahMyPets extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Tambah My Pets'),
//         ),
//         body: PetsForm(),
//       ),
//     );
//   }
// }

// class PetsForm extends StatefulWidget {
//   @override
//   _PetsFormState createState() => _PetsFormState();
// }

// class _PetsFormState extends State<PetsForm> {
//   final _formKey = GlobalKey<FormState>();
//   String _name = '';
//   String _type = '';
//   late File _image;

//   void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       // TODO: Upload image to a server
//       // TODO: Save pet details to a database
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Pet added successfully')));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // List<Widget> pets = List<Widget>();
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: <Widget>[
//           TextFormField(
//             decoration: InputDecoration(labelText: 'Your Pet\'s Name'),
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'Please enter your pet\'s name';
//               }
//               return null;
//             },
//             onSaved: (value) {
//               _name = value!;
//             },
//           ),
//           TextFormField(
//             decoration: InputDecoration(labelText: 'Your Pet\'s Type'),
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'Please enter your pet\'s type';
//               }
//               return null;
//             },
//             onSaved: (value) {
//               _type = value!;
//             },
//           ),
//           RaisedButton(
//             onPressed: () {
//               // TODO: Add image picking functionality
//             },
//             child: Text('Pick Image'),
//           ),
//           SizedBox(height: 10),
//           RaisedButton(
//             onPressed: _submitForm,
//             child: Text('Submit'),
//           ),
//         ],
//       ),
//     );
//   }

//   RaisedButton({required void Function() onPressed, required Text child}) {}
// }
