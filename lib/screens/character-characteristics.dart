import 'package:flutter/material.dart';
import '../models/personagem.dart';

final _formKey = GlobalKey<FormState>();

class CharacterCharacteristics extends StatefulWidget{
	@override
	_CharacterCharacteristicsState createState() => _CharacterCharacteristicsState();

	final Personagem personagem = Personagem(
		'Elysius',
		'teste2',
    'teste'
	);
}

class _CharacterCharacteristicsState extends State<CharacterCharacteristics>{
	_CharacterCharacteristicsState({Key key, Personagem personagem}) : super();

	@override
	Widget build(BuildContext context) {
		return Column(
			children: <Widget>[
				Row(
					children: <Widget>[
						Text("Nome: "+widget.personagem.nome),
            Text("Raca: "+widget.personagem.raca)
					], 
				),
			Form(
				key: _formKey,
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget>[
					TextFormField(
						decoration: const InputDecoration(
						hintText: 'Enter your email',
						),
						validator: (value) {
						if (value.isEmpty) {
							return 'Please enter some text';
						}
						return null;
						},
					),
					Padding(
						padding: const EdgeInsets.symmetric(vertical: 16.0),
						child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                // Process data.
                }
              },
              child: Text('Submit'),
						),
					),
					],
				),
				)
			]
		);
	}
}
