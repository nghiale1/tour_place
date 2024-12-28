// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'reset_password_form.dart';
//
// class ResetPasswordScreen extends StatelessWidget {
//   const ResetPasswordScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFDFDFD),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Color(0xFF2A2A2A)),
//           onPressed: () => Navigator.of(context).pop(),
//           tooltip: 'Go back',
//         ),
//         systemOverlayStyle: SystemUiOverlayStyle.dark,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 50),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.network(
//                 'https://cdn.builder.io/api/v1/image/assets/TEMP/8fbb8f813be932134575fb353dd1c78908ce4612b71a019b33e83f8aa0beb2ed?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
//                 width: double.infinity,
//                 fit: BoxFit.contain,
//                 semanticLabel: 'Reset password illustration',
//               ),
//               const SizedBox(height: 39),
//               Text(
//                 'Reset Your Password',
//                 style: Theme.of(context).textTheme.headlineSmall?.copyWith(
//                   fontWeight: FontWeight.w600,
//                   letterSpacing: 0.24,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 'Now you can reset your old password',
//                 style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                   color: const Color(0xFF696969),
//                   letterSpacing: 0.14,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 38),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }