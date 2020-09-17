import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Facebook App",
    home: FaceHome(),
  ));
}

class FaceHome extends StatefulWidget {
  @override
  _FaceHomeState createState() => _FaceHomeState();
}

Widget textBoxModel(String hint) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextFormField(
      decoration: InputDecoration(
          hintText: hint,
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400])),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue[900]))),
    ),
  );
}

class _FaceHomeState extends State<FaceHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          LayoutBuilder(builder: (context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      color: Colors.blue[900],
                      child: Padding(
                        padding: EdgeInsets.all(90),
                        child: Image.asset(
                          "assets/logo.png",
                          fit: BoxFit.contain,
                          height: 40,
                          width: 40,
                        ),
                      ),
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Ingês - Espanhol",
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[700]),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    textBoxModel("Telefone ou email"),
                    textBoxModel("Senha"),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      child: RaisedButton(
                        color: Colors.blue[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "Entrar",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Esqueceu a senha?",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(child: Divider()),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Text("OU"),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                      child: RaisedButton(
                        color: Colors.green[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Criar nova conta do facebook",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )),
        );
      }),
    );
  }
}
