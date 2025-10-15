import 'package:flutter/material.dart';
import 'package:genbi_project/log_in_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  late AnimationController _slideControllerLeft;
  late Animation<double> _slideAnimationLeft;

  late AnimationController _slideControllerRight;
  late Animation<double> _slideAnimationRight;

  late AnimationController _fadeAnimationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 23),
    )..repeat();

    _slideControllerLeft = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    Future.delayed(const Duration(seconds: 1), () {
      _slideControllerLeft.forward();
    });

    _slideControllerRight = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    Future.delayed(const Duration(seconds: 2), () {
      _slideControllerRight.forward();
    });

    _fadeAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 3,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    Future.delayed(const Duration(seconds: 3), () {
      _fadeAnimationController.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _slideControllerLeft.dispose();
    _slideControllerRight.dispose();
    _fadeAnimationController.dispose();
    super.dispose();
  }

  Widget _animatedFromLeft(Widget child) {
    final screenWidth = MediaQuery.of(context).size.width;

    _slideAnimationLeft = Tween<double>(begin: -screenWidth, end: 0).animate(
      CurvedAnimation(parent: _slideControllerLeft, curve: Curves.easeOutQuart),
    );

    return AnimatedBuilder(
      animation: _slideAnimationLeft,
      builder: (context, _) {
        return Transform.translate(
          offset: Offset(_slideAnimationLeft.value, 0),
          child: child,
        );
      },
    );
  }

  Widget _animatedFromRight(Widget child) {
    final screenWidth = MediaQuery.of(context).size.width;

    _slideAnimationRight = Tween<double>(begin: screenWidth, end: 0).animate(
      CurvedAnimation(
        parent: _slideControllerRight,
        curve: Curves.easeOutQuart,
      ),
    );

    return AnimatedBuilder(
      animation: _slideAnimationRight,
      builder: (context, _) {
        return Transform.translate(
          offset: Offset(_slideAnimationRight.value, 0),
          child: child,
        );
      },
    );
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

          Padding(
            padding: const EdgeInsets.fromLTRB(36.0, 0, 36.0, 17.0),
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

                Column(
                  children: [
                    _animatedFromLeft(
                      Container(
                        width: double.infinity,
                        height: 85,
                        padding: const EdgeInsets.all(11),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(169, 35, 42, 64),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            width: 0.5,
                            color: const Color.fromARGB(255, 153, 153, 153),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Icon(Icons.person, size: 16),
                            ),
                            const SizedBox(width: 17),
                            const Text(
                              'Не подскажешь где найти все\nдостопримечательности в новом\nгороде',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    _animatedFromRight(
                      Container(
                        width: double.infinity,
                        height: 85,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(169, 35, 42, 64),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            width: 0.5,
                            color: const Color.fromARGB(255, 153, 153, 153),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'Конечно, зайди в Genbi, он тебе\nрасскажет про город даже то что\nместные не знают',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.right,
                            ),
                            const SizedBox(width: 17),
                            RotationTransition(
                              turns: Tween<double>(
                                begin: 0.0,
                                end: -1.0,
                              ).animate(_controller),
                              child: Image.asset(
                                'assets/logo_genbi.png',
                                width: 32,
                                height: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 227),
                    AnimatedBuilder(
                      animation: _fadeAnimationController,
                      builder: (context, child) {
                        return Opacity(
                          opacity: _fadeAnimation.value,
                          child: Transform.translate(
                            offset: Offset(0, _fadeAnimationController.value),
                            child: child,
                          ),
                        );
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const LogInScreen(),
                              transitionDuration:
                                  Duration.zero,
                              reverseTransitionDuration:
                                  Duration.zero,
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 52,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFF232A40),
                            border: Border.all(
                              width: 0.5,
                              color: const Color.fromARGB(255, 153, 153, 153),
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            'Дальше',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
