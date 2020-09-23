import 'package:flutter/material.dart';
import 'package:indianmoney_assignment/Model/user.dart';
import 'package:indianmoney_assignment/files/FadeAnimation.dart';
import 'package:indianmoney_assignment/files/home.dart';
import 'package:indianmoney_assignment/files/login_presenter.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:indianmoney_assignment/files/register.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginPageContract {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _email, _password;

  LoginPagePresenter _presenter;

  _LoginPageState() {
    _presenter = new LoginPagePresenter(this);
  }

  void _register() {
    Navigator.of(context).pushNamed("/register");
   // Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _presenter.doLogin(_email, _password);
      });
    }
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;

    var loginBtn =  FadeAnimation(2, GestureDetector(
      onTap:_submit ,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(143, 148, 251, 1),
                  Color.fromRGBO(143, 148, 251, .6),
                ]
            )
        ),
        child: Center(
          child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
      ),
    ));


//    var loginBtn = new RaisedButton(
//      onPressed: _submit,
//      child: new Text("Login"),
//      color: Colors.red,
//    );

    var registerBtn =  FadeAnimation(2, GestureDetector(
      onTap: _register,
      child: Container(
        child: Center(
          child: Text("Don't have an account?Signup", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        ),
      ),
    ));

    var loginForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        FadeAnimation(2,
          Container(
            child: ClipPath(
              clipper: WaveClipperOne(flip: true),
              child: Container(
                height: 350,
                // color: Colors.orange,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(143, 148, 251, 1),
                          Color.fromRGBO(143, 148, 251, .6),
                        ]
                    )
                ),
                child: Center(child: Text("Welcome to LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: "IBMPlexSans",
                    fontWeight: FontWeight.w700,
                  ),

                )),
              ),
            ),
          ),
        ),
        new Form(
          key: formKey,
          child: SingleChildScrollView(

            child: new Column(
              children: <Widget>[

                Container(
                  // color: Colors.amber,
                  child: new Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new TextFormField(
                      onSaved: (val) => _email = val,
                      decoration: new InputDecoration(labelText: "Email"),
                    ),
                  ),
                ),


                new Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: new TextFormField(
                    onSaved: (val) => _password = val,
                    decoration: new InputDecoration(labelText: "Password"),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        new Padding(
            padding: const EdgeInsets.all(10.0),
            child: loginBtn),
        SizedBox(height: 10,),
        registerBtn
      ],
    );

    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      key: scaffoldKey,
      body: new Container(
        child: new Center(
          child: loginForm,
        ),
      ),
    );
  }

  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
    _showSnackBar("Login not successful");
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void onLoginSuccess(User user) async {
    // TODO: implement onLoginSuccess
    if(user.username == ""){
      _showSnackBar("Login not successful");
    }else{
      _showSnackBar(user.toString());
    }
    setState(() {
      _isLoading = false;
    });
    if(user.flaglogged == "logged"){
      print("Logged");
      Navigator.push(context, MaterialPageRoute(builder: (context) => homescreen()));
    }else{
      print("Not Logged");
    }
  }
}



