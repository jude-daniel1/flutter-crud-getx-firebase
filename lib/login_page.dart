import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        Container(
          width: width,
          height: height * 0.3,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/loginimg.png"), fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                ),
              ),
              const Text(
                "Sign into your account",
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: const Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder:  OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.white)),
                      enabledBorder:  OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: const Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2))
                    ]),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      focusedBorder:  OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.white)),
                      enabledBorder:  OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(top: 20),
                width: width,
                child:  const Text(
                "Forgot your Password?",
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 16,
                ),
              ),
              ),
              const SizedBox(height: 50,),
              Center(
                child: InkWell(
                  onTap: (){},
                  child: Container(
                  alignment: Alignment.center,
                  width: width * 0.5,
                  height: 50,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("img/loginbtn.png"),
                    fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                    child: const Text("Sign in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                 
                ),
                )
              ),
            ],
          ),
        ),
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 16,
                  ),
              ),
               SizedBox(width: 5,),
               InkWell(
                 onTap: null,
                 child: Text(
                  "Create",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
              ),
               )
        
            ],
          ),
        )
      ]),
    );
  }
}
