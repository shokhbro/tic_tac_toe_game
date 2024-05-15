// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// class GameScreen extends StatefulWidget {
//   String name;
//   GameScreen({required this.name});

//   @override
//   State<GameScreen> createState() => _GameScreenState();
// }

// class _GameScreenState extends State<GameScreen> {
//   int xPlayer = 0;
//   int oPlayer = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff323D5B),
//       appBar: AppBar(
//         backgroundColor: const Color(0xff323D5B),
//       ),
//       body: Column(
//         children: [
//           const Gap(10),
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text(
//                 "Player x",
//                 style: TextStyle(
//                   fontFamily: 'Rowdies',
//                   color: Colors.white,
//                   fontSize: 20,
//                 ),
//               ),
//               Text(
//                 "Player O",
//                 style: TextStyle(
//                   fontFamily: 'Rowdies',
//                   color: Colors.white,
//                   fontSize: 20,
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text(
//                 "$xPlayer",
//                 style: const TextStyle(
//                   fontFamily: 'Rowdies',
//                   color: Colors.white,
//                   fontSize: 40,
//                 ),
//               ),
//               const Text(
//                 "|",
//                 style: TextStyle(
//                   fontFamily: 'Rowdies',
//                   color: Colors.white,
//                   fontSize: 40,
//                 ),
//               ),
//               Text(
//                 "$oPlayer",
//                 style: const TextStyle(
//                   fontFamily: 'Rowdies',
//                   color: Colors.white,
//                   fontSize: 40,
//                 ),
//               ),
//             ],
//           ),
//           const Gap(20),
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       width: 108,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.amber,
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "X",
//                           style: TextStyle(
//                             fontFamily: 'Rowdies',
//                             color: Colors.white,
//                             fontSize: 70,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 108,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.amber,
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "X",
//                           style: TextStyle(
//                             fontFamily: 'Rowdies',
//                             color: Colors.white,
//                             fontSize: 70,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 108,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.amber,
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "X",
//                           style: TextStyle(
//                             fontFamily: 'Rowdies',
//                             color: Colors.white,
//                             fontSize: 70,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const Gap(5),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       width: 108,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.amber,
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "O",
//                           style: TextStyle(
//                             fontFamily: 'Rowdies',
//                             color: Colors.white,
//                             fontSize: 70,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 108,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.amber,
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "X",
//                           style: TextStyle(
//                             fontFamily: 'Rowdies',
//                             color: Colors.white,
//                             fontSize: 70,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 108,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.amber,
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "O",
//                           style: TextStyle(
//                             fontFamily: 'Rowdies',
//                             color: Colors.white,
//                             fontSize: 70,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const Gap(5),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       width: 108,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.amber,
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "O",
//                           style: TextStyle(
//                             fontFamily: 'Rowdies',
//                             color: Colors.white,
//                             fontSize: 70,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 108,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.amber,
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "O",
//                           style: TextStyle(
//                             fontFamily: 'Rowdies',
//                             color: Colors.white,
//                             fontSize: 70,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 108,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.amber,
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "O",
//                           style: TextStyle(
//                             fontFamily: 'Rowdies',
//                             color: Colors.white,
//                             fontSize: 70,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           const Gap(20),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               InkWell(
//                 child: Container(
//                   width: 250,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.green,
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "New Game",
//                       style: TextStyle(
//                         fontFamily: 'Rowdies',
//                         color: Colors.white,
//                         fontSize: 22,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const Gap(15),
//               InkWell(
//                 child: Container(
//                   width: 250,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.green,
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "Reset Game",
//                       style: TextStyle(
//                         fontFamily: 'Rowdies',
//                         color: Colors.white,
//                         fontSize: 22,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
