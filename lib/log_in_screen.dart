import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen>
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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/background_img.jpg',
            fit: BoxFit.cover,
            alignment: const Alignment(0.4, 0.0),
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(118, 0, 0, 0),
          ),
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 74),
                  alignment: Alignment.topCenter,
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
                const SizedBox(height: 142),
                Text(
                  'Твой путиводитель\nпо новым открытиям',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 78),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 52,
                    margin: EdgeInsets.only(bottom: 18),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 153, 153, 153),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 52,
                    margin: EdgeInsets.only(bottom: 18),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(226, 35, 42, 64),
                      border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 153, 153, 153),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Colors.white54,
                        thickness: 1,
                        endIndent: 10,
                      ),
                    ),
                    const Text(
                      "or",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const Expanded(
                      child: Divider(
                        color: Colors.white54,
                        thickness: 1,
                        indent: 10,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 52,
                    margin: EdgeInsets.only(top: 18),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(110, 35, 42, 64),
                      border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 153, 153, 153),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      'Continue with Google',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(child: Container(width: double.infinity)),
                RichText(textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Регистрируясь, вы принимаете условия\n',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    children: [
                      TextSpan(
                        text: 'политики конфиденциальности',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 12
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
