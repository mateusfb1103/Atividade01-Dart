import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicação Bancária'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('Conta Corrente'),
              subtitle: Text('Saldo disponível: R\$ 2.500,00'),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Conta Poupança'),
              subtitle: Text('Saldo disponível: R\$ 1.200,00'),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Cartão de Crédito'),
              subtitle: Text('Limite disponível: R\$ 500,00'),
            ),
          ),
        ],
      ),
    );
  }
}
