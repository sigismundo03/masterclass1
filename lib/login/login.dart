import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 1,
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF3c66dc),
                      Color(0xFF574dc8),
                    ],
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                  ),
                ),
                height: MediaQuery.of(context).size.height * .5,
              ),
              const IconeHomeWidget(),
              const FormWidget(),
              const BotoesWidegt(),
              Positioned(
                bottom: MediaQuery.of(context).size.height * .13,
                left: MediaQuery.of(context).size.width * .3,
                child: const Text(
                  'FORGOT PASSWORD?',
                  style: TextStyle(color: Color.fromARGB(255, 146, 146, 146)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconeHomeWidget extends StatelessWidget {
  const IconeHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .2,
      left: MediaQuery.of(context).size.width * .35,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(60)),
        ),
        height: 120,
        width: 120,
        child: IconButton(
          icon: Container(
            foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF3c66dc),
                    Color(0xFF574dc8),
                  ],
                  begin: Alignment(0, 0),
                  end: Alignment(0, 1),
                ),
                backgroundBlendMode: BlendMode.screen),
            child: const Icon(Icons.home),
          ),
          iconSize: 80,
          onPressed: () {},
        ),
      ),
    );
  }
}

class BotoesWidegt extends StatelessWidget {
  const BotoesWidegt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * .18,
      left: MediaQuery.of(context).size.width * .2,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF336cdf),
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        height: 60,
        width: 250,
        child: const Center(
          child: Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class FormWidget extends StatelessWidget {
  const FormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * .2,
      left: 32,
      right: 32,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 18,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 12,
                bottom: 45,
              ),
              child: Text('LOGIN'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Email'),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 30,
                    ),
                    child: TextField(),
                  ),
                  Text("Password"),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 70,
                    ),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.numberWithOptions(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
