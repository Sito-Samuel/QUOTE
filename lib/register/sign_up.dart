import 'package:quotes/auth_service.dart';
import 'package:quotes/customTextField.dart';
import 'package:quotes/register/onboard.dart';
import 'package:quotes/register/sign_in.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _showPassword = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthService _authService = AuthService();

  Future<void> _registerUser() async {
    if (_formKey.currentState?.validate() ?? false) {
      final user = await _authService.signUpWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
        fullName: _fullNameController.text.trim(),
        address: _addressController.text.trim(),
        phoneNumber: _phoneNumberController.text.trim(),
      );

      if (user != null) {
        print('User registered successfully: ${user.uid}');
        // Navigate to the sign-in page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignInPage()),
        );
      } else {
        print('User registration failed');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('User registration failed'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade600,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 90, 8.0, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Align(
                    alignment: Alignment.topCenter,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        // Navigate back to the Onboard screen
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => OnBoard()),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Card(
                      elevation: 16,
                      color: Colors.black,
                      child: Container(
                        color: Colors.transparent,
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width / 3.5,
                        child: Image.asset("assets/dailyquotes.png"),
                      ),
                    ),
                  ),
                 Container(
                   padding: const EdgeInsets.only(top: 60),
                   decoration: BoxDecoration(
                     image: DecorationImage(
                         image: AssetImage('assets/sign_in_background.png'),
                         fit: BoxFit.fill),
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Center(
                         child: Text(
                           'Sign Up',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 24,
                             color: Colors.white,
                             fontFamily: 'DancingScript',
                           ),
                         ),
                       ),
                       SizedBox(
                         height: 40,
                       ),
                       CustomTextField(
                         label: 'Full Name',
                         hint: 'Enter your full name',
                         controller: _fullNameController,
                         validator: (value) {
                           if (value?.isEmpty ?? true) {
                             return 'Please enter your full name';
                           }
                           return null;
                         },
                       ),

                       CustomTextField(
                         label: 'Email',
                         hint: 'Enter your email',
                         controller: _emailController,
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Email is required';
                           }

                           if (!value.contains('@')) {
                             return 'Enter a valid email address';
                           }
                           return null;
                         },
                       ),
                       CustomTextField(
                         label: 'Phone Number',
                         hint: 'Enter your phone number',
                         inputType: TextInputType.phone,
                         controller: _phoneNumberController,
                         validator: (value) {
                           if (value?.isEmpty ?? true) {
                             return 'Please enter your phone number';
                           }
                           if (!RegExp(r'^[0-9]+$').hasMatch(value!)) {
                             return 'Please enter a valid phone number containing only digits';
                           }
                           if (value.length != 11) {
                             return 'Phone number must have exactly 11 digits';
                           }
                           return null;
                         },
                       ),
                       CustomTextField(
                         label: 'Password',
                         hint: 'Enter your password',
                         controller: _passwordController,
                         validator: (value) {
                           if (value?.isEmpty ?? true) {
                             return 'Please enter a password';
                           }
                           if (!RegExp(
                               r'^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*()_+{}|":;<>,.?/~`]).{8,}$')
                               .hasMatch(value!)) {
                             return 'Password must have at least 8 characters, an uppercase letter, a digit, and a special character';
                           }
                           return null;
                         },
                         isPassword: true,
                         showPassword: _showPassword,
                         onToggleShowPassword: () {
                           setState(() {
                             _showPassword = !_showPassword;
                           });
                         },
                       ),
                       SizedBox(height: 30),
                       Center(
                         child: ElevatedButton(
                           onPressed: _registerUser,
                           style: ElevatedButton.styleFrom(
                             primary: Colors.black,
                           ),
                           child: Text(
                             'Sign Up',
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 18,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                         ),
                       ),
                       SizedBox(height: 10),
                       Row(

                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Text("Already have an account? ",
                             style: TextStyle(
                               color: Colors.white
                             ),
                           ),
                           InkWell(
                             onTap: () {
                               // Navigate to the sign-in page
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                   builder: (context) => SignInPage(),
                                 ),
                               );
                             },
                             child: Text(
                               "Log In",
                               style: TextStyle(
                                 fontSize: 18,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ],
                   ),
                 )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
