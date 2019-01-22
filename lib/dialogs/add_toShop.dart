import 'package:flutter/material.dart';

class Add_toShop extends StatelessWidget {
  final String name;
  final String price;
  final String itemKey;
  String _values;
  final formKey = new GlobalKey<FormState>();

  Add_toShop({this.name, this.price, this.itemKey});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ThemeData localTheme = Theme.of(context);
    return SimpleDialog(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(10.0),
            child: new Form(
              key: formKey,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    this.name,
                    style: localTheme.textTheme.title,
                  ),
                  new Text(
                    this.price,
                    style: localTheme.textTheme.display1,
                  ),
                  new TextFormField(
                    decoration: InputDecoration(labelText: 'Quantite'),
                    keyboardType: TextInputType.number,
                    validator: (val) =>
                        val.isEmpty ? 'Remplissez ce champs' : null,
                    onSaved: (val) => _values = val,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Wrap(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            _submit();
                          },
                          child: const Text('Ajouter au panier'),
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }

  void _submit() {
    final form = formKey.currentState;
    if (form.validate()) {
      print(_values);
    }
  }
}
