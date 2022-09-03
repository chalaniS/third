import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'form.dart';


void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //use for remove banner of debug on appbar
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter demo',
      theme: ThemeData(primaryColor: Colors.lightBlue[800]),
      home:  const MyForm(),
    );
  }
}
//
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Text field'
//         ),
//       ),
//       body: Center(
//         child: Column(
//           children: const [
//             Padding(
//                 padding: EdgeInsets.all(20.0),
//               child: TextField(
//                 maxLength: 8,
//                 keyboardType:  TextInputType.number,
//                 decoration: InputDecoration(
//                   prefixIcon:  Icon(Icons.search),
//                 ),
//                 style: TextStyle(
//                   fontSize: 30.0
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(20.0),
//               child: TextField(
//                 maxLength: 8,
//                 autofocus: true,
//                 keyboardType:  TextInputType.number,
//                 style: TextStyle(
//                     fontSize: 30.0
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
