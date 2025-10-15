import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 23),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            'assets/background_img.jpg',
            fit: BoxFit.cover,
            alignment: const Alignment(-0.3, 0.0),
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(118, 0, 0, 0),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36.0, 0, 36.0, 17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.only(top: 74),
                  child: RotationTransition(
                    turns: Tween<double>(
                      begin: 0.0,
                      end: -1.0,
                    ).animate(_controller),
                    child: Image.asset(
                      'assets/logo_genbi.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Добро пожаловать!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Expanded(child: Container(width: double.infinity)),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: 'Почта',
                    filled: true,
                    fillColor: const Color.fromARGB(169, 35, 42, 64),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 153, 153, 153),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 153, 153, 153),
                        width: 2,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 17, 0),
                        width: 2,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 0, 0),
                        width: 2,
                      ),
                    ),
                  ),
                  cursorColor: const Color.fromARGB(0, 33, 149, 243),
                ),
                const SizedBox(height: 18),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: 'Пароль',
                    filled: true,
                    fillColor: const Color.fromARGB(169, 35, 42, 64),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 153, 153, 153),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 153, 153, 153),
                        width: 2,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 17, 0),
                        width: 2,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 0, 0),
                        width: 2,
                      ),
                    ),
                  ),
                  cursorColor: const Color.fromARGB(0, 33, 149, 243),
                  obscureText: true,
                ),
                const SizedBox(height: 18),
                Text('Забыли пароль?', style: TextStyle(color: Colors.grey)),
                const SizedBox(height: 18),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 52,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(169, 35, 42, 64),
                      border: Border.all(
                        width: 0.5,
                        color: const Color.fromARGB(255, 153, 153, 153),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text('Войти', style: TextStyle(color: Colors.white)),
                  ),
                ),
                Expanded(child: Container(width: double.infinity)),
                // RichText(
                //   textAlign: TextAlign.center,
                //   text: TextSpan(
                //     text: 'Регистрируясь, вы принимаете условия\n',
                //     style: TextStyle(color: Colors.white, fontSize: 12),
                //     children: [
                //       TextSpan(
                //         text: 'политики конфиденциальности',
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontWeight: FontWeight.w700,
                //           fontSize: 12,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
