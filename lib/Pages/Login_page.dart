
import 'package:flutter/material.dart';
import 'package:sathi/components/My_textfield.dart';


class LoginPage extends StatefulWidget {
     LoginPage({Key? key}) : super(key: key);

final usernameController= TextEditingController();
final passwordController= TextEditingController();
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
              const  SizedBox(height: 40,),
                // logo
              const Icon(
                Icons.bed,
                size:100 ,
                ),
             
                
              // welcome back text
                const Text("Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontStyle: FontStyle.normal
      
                ),),
                
                const SizedBox(height:50),
      
              // textfield username / email
                 MyTextfield(
                  a_controller: widget.usernameController,
                  hintText: "Username",
                  obscureText: false,
                ),
                
                 const SizedBox(height: 30,),
              // password
                MyTextfield(
                  a_controller: widget.passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),
      
              // forgot password
      
                const SizedBox(height: 30,),
                const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.0),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("forgot password?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),),
      
                    ],
                  ),
                ),
            
                const SizedBox(height: 40,),
      
              //sign in button
      
                 GestureDetector(
                  onTap: (){
                    
                  },
                  child:  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)
                  
                      ),
                      child: const Center(
                        child: Text(  "Sign IN",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ), 
                      ),
                    ),
                  ),
                )
      
                
              
                
              
                
              //REGISTER NOW
                
               ],
                
            ),
          ),
        ),
      ),
    );
  }
}