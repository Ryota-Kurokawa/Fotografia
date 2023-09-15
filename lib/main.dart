import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fotografia/first_page.dart';
import 'package:riverpod/riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  const scope = ProviderScope(child: Fotografia());
  runApp(scope);
}

class Fotografia extends StatelessWidget {
  const Fotografia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

// class Config extends HookWidget {
//   const Config({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final isLogin = useState(false);
//     useEffect(
//       () {
//         // FirebaseAuth.instance.signOut();
//         final currentUser = FirebaseAuth.instance.currentUser;
//         if (currentUser != null) {
//           isLogin.value = true;
//         }
//         return;
//       },
//     );

//     return isLogin.value ? loginPage() : loginPage();
//   }
// }
