import 'package:design_app/place_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}
class _LoginPageState extends State<LoginPage>{
  String _user = "";
  String _password="";
  var _formKey = GlobalKey<FormState>();
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top:60),
                    child: FlutterLogo(size: 100)
                ),
                Padding(
                    padding: EdgeInsets.only(top:16),
                    child: Text(
                        "TravelApp",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.pacifico(
                            textStyle: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w700,
                                fontSize: 58
                            )
                        )/*TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Signatra",
                  fontSize: 58
                )*/
                    )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Welcome!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue[500],
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 8, top:16),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 300,
                                  child: Material(
                                    elevation: 5.0,
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Colors.blue,
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(12),
                                          child: Icon(Icons.account_circle,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          width: 252,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomRight: Radius.circular(10),
                                                  topRight: Radius.circular(10)
                                              )
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8),
                                            child: TextFormField(
                                              validator: (value)=> value.isEmpty ? "Usuario es obligatorio" : null,
                                              onSaved: (value) => _user=value,
                                              style:TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18
                                              ),
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Usuario",
                                                  fillColor: Colors.white,
                                                  filled: true
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 8, top:16),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 300,
                                  child: Material(
                                    elevation: 5.0,
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Colors.blue,
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(12),
                                          child: Icon(Icons.vpn_key,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          width: 252,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomRight: Radius.circular(10),
                                                  topRight: Radius.circular(10)
                                              )
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8),
                                            child: TextFormField(
                                              validator: (value)=> value.isEmpty ? "Contraseña es obligatorio" : null,
                                              onSaved: (value) => _password=value,
                                              style:TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18
                                              ),
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Contraseña",
                                                  fillColor: Colors.white,
                                                  filled: true
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top:20,left: 8, right: 8),
                    child:Container(
                      width: 300,
                      height: 130,
                      padding: EdgeInsets.all(40),
                      child: RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          "Entrar",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        onPressed: (){
                          final form = _formKey.currentState; /*obtiene el elemento de la llava y la guarda en variable form*/
                          if(form.validate()) {
                            form.save();
                           if(_user== "Alberto" && _password =="1234")
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PlacePage())
                            );
                            //print("Usuario:" +_user+"Contraseña:"+_password);

                          } else {
                            _scaffoldKey.currentState.showSnackBar(SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("usuario y conta erronea"),
                            ));
                          }
                          /*Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PlacePage())
                          );*/
                        },
                      ),
                    )
                )
              ],
            )
        )
    );
  }

}