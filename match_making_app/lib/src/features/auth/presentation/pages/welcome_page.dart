import 'package:flutter/material.dart';
import 'package:match_making_app/src/features/auth/presentation/pages/sign_up_page.dart';
import '../../data/repositories/UserRepository.dart';
import '../vectors/welcome_page_vectors.dart';

class WelcomePage extends StatefulWidget {
  var uuserRepository;

  WelcomePage({Key? key, required this.uuserRepository}) : super(key: key);

  @override
  _WelcomePageState createState() =>
      _WelcomePageState(userRepositoryy: uuserRepository);
}

class _WelcomePageState extends State<WelcomePage> {
  final userRepositoryy;

  _WelcomePageState({Key? key, required this.userRepositoryy});

  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
  List<Widget> slides = items
      .map((item) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Image.asset(
                  item['image'],
                  fit: BoxFit.fitWidth,
                  width: 220.0,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: <Widget>[
                      Text(item['header'],
                          style: const TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0XFF3F3D56),
                              height: 2.0)),
                      Text(
                        item['description'],
                        style: const TextStyle(
                            color: Colors.grey,
                            letterSpacing: 1.2,
                            fontSize: 16.0,
                            height: 1.3),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: SignUpScreen(),
              )
            ],
          )))
      .toList();

  List<Widget> indicator() => List<Widget>.generate(
      slides.length,
      (index) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 3.0),
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
                color: currentPage.round() == index
                    ? const Color(0XFF256075)
                    : const Color(0XFF256075).withOpacity(0.2),
                borderRadius: BorderRadius.circular(10.0)),
          ));
  double currentPage = 0.0;
  final _pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: _pageViewController,
            itemCount: slides.length,
            itemBuilder: (BuildContext context, int index) {
              _pageViewController.addListener(() {
                setState(() {
                  currentPage = _pageViewController.page!;
                });
              });
              return slides[index];
            },
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 70.0),
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: indicator(),
                ),
              ))
        ],
      ),
    );
  }
  // => Scaffold(
  //   appBar: AppBar(
  //     title: const Text("Welcome"),
  //   ),
  //   body: const Center(
  //     child: Text("welcome")
  //   ),
  // );
}

class SignUpScreen extends StatelessWidget {

  const SignUpScreen({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: TextButton(
      child: const Text('Sign Up'),

      // Navigate to the Setting screen
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => const SignUpPage()));
      },
    )));
  }
}
