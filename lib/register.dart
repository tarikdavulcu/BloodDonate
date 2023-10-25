import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kanbagisla/components/my_button.dart';
import 'package:kanbagisla/components/my_textfield.dart';
import 'package:kanbagisla/components/square_tile.dart';
import 'package:kanbagisla/homepage.dart';

import 'package:kanbagisla/login.dart';
import 'package:kanbagisla/services/auth_service.dart';
import 'package:localstorage/localstorage.dart';

// class Register extends StatefulWidget {
//   const Register({super.key});

//   @override
//   State<Register> createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(top: 60.0),
//               child: Center(
//                 child: SizedBox(
//                     width: 200,
//                     height: 150,
//                     /*decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(50.0)),*/
//                     child: Image.asset('asset/images/flutter.png')),
//               ),
//             ),
//             Padding(
//               //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: TextFormField(
//                 obscureText: false,
//                 controller: _emailController,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Eposta Boş Olamaz';
//                   }
//                   return null;
//                 },
//                 autofocus: false,
//                 style: const TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.amber),
//                 decoration: const InputDecoration(
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(30.0))),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.redAccent,
//                       width: 1,
//                     ),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(
//                         30.0,
//                       ),
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide:
//                         BorderSide(color: Colors.amberAccent, width: 2.0),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(
//                         30.0,
//                       ),
//                     ),
//                   ),

//                   isDense: true,
//                   // fillColor: kPrimaryColor,
//                   filled: true,
//                   errorStyle: TextStyle(fontSize: 15),
//                   hintText: 'Eposta Giriniz',
//                   hintStyle: TextStyle(
//                       fontSize: 17,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.lightGreenAccent),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15.0, right: 15.0, top: 15, bottom: 0),
//               //padding: EdgeInsets.symmetric(horizontal: 15),
//               child: TextFormField(
//                 obscureText: false,
//                 controller: _passwordController,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Şifre Boş Olamaz';
//                   }
//                   return null;
//                 },
//                 autofocus: false,
//                 style: const TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.amber),
//                 decoration: const InputDecoration(
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(30.0))),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.redAccent,
//                       width: 1,
//                     ),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(
//                         30.0,
//                       ),
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide:
//                         BorderSide(color: Colors.amberAccent, width: 2.0),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(
//                         30.0,
//                       ),
//                     ),
//                   ),

//                   isDense: true,
//                   // fillColor: kPrimaryColor,
//                   filled: true,
//                   errorStyle: TextStyle(fontSize: 15),
//                   hintText: 'Şifre Giriniz',
//                   hintStyle: TextStyle(
//                       fontSize: 17,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.lightGreenAccent),
//                 ),
//               ),
//             ),
//             Container(
//               height: 50,
//               width: 250,
//               decoration: BoxDecoration(
//                   color: Colors.blue, borderRadius: BorderRadius.circular(20)),
//               child: ElevatedButton(
//                 onPressed: () async {
//                   var rrr = await createUserWithEmailAndPassword(
//                       email: _emailController.text.trim().toString(),
//                       password: _passwordController.text.trim().toString(),
//                       context: context);
//                   final LocalStorage storage = LocalStorage('key');

//                   storage.clear();

//                   storage.setItem('token', rrr);
//                   EasyLoading.show(status: 'loading...');
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (_) => HomePage(
//                                 title: 'Kan Bağışla',
//                                 usr: rrr as User,
//                               )));
//                   EasyLoading.dismiss();
//                 },
//                 child: const Text(
//                   'Kayıt Ol',
//                   style: TextStyle(color: Colors.white, fontSize: 25),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 130,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (_) => LoginPage(
//                               onTap: () {},
//                             )));
//               },
//               child: const Text(
//                 'Giriş Yap',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUserUp() async {
    // show loading circle
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      // check if both password and confirm pasword is same
      if (passwordController.text == confirmPasswordController.text) {
        var rrr = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        final LocalStorage storage = LocalStorage('key');

        storage.clear();

        storage.setItem('token', rrr.user);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => HomePage(
                      title: 'Kan Bağışla',
                      usr: rrr.user,
                    )));
      } else {
        //show error password dont match
        genericErrorMessage("Şifreler Uyuşmuyor");
      }

      //pop the loading circle
      //Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop the loading circle
      Navigator.pop(context);

      genericErrorMessage(e.code);
    }
  }

  void genericErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 10),
                //welcome back you been missed

                const SizedBox(height: 25),

                //username
                MyTextField(
                  controller: emailController,
                  hintText: 'Eposta',
                  obscureText: false,
                ),

                const SizedBox(height: 15),
                //password
                MyTextField(
                  controller: passwordController,
                  hintText: 'Şifre',
                  obscureText: true,
                ),
                const SizedBox(height: 15),

                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'Şifre Tekrarı',
                  obscureText: true,
                ),
                const SizedBox(height: 15),

                //sign in button
                MyButton(
                  onTap: signUserUp,
                  text: 'Kayıt Ol',
                ),
                const SizedBox(height: 20),

                // continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          'Ya da',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 60),

                //google + apple button

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google buttom
                    SquareTile(
                      onTap: () => AuthService().signInWithGoogle(),
                      imagePath: 'lib/icons/google.svg',
                      height: 70,
                    ),

                    SizedBox(width: 20),
                    // apple buttom
                    SquareTile(
                      onTap: () {},
                      imagePath: 'lib/icons/apple.svg',
                      height: 70,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),

                // not a memeber ? register now

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Zaten üye iseniz ',
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => LoginPage(onTap: () {})));
                      },
                      child: Text(
                        'Tıklayınız',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
