import 'package:flutter/material.dart';
import 'package:widget_1/Views/profilview.dart';

class loginview extends StatelessWidget {
  const loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column( 
        children: [
      Text("halaman login"), 
      ElevatedButton(
        onPressed:() {
        Navigator.pushNamed(context,'/home');
        },
        child: Text('home'),
        ),
        ElevatedButton(
          onPressed:() {
        Navigator.pushReplacementNamed(context,'/login');
        },
        child: Text('login'),
        ),
        ElevatedButton(
        onPressed:() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder:(context_)=>profilview(
        nama: 'haris',
        alamat:'malang',
        juara:123,
        ),
        ),
        );
        },
        child: Text('profile'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/transaksi',arguments:{
                'id':1,
                'product': 'bag',
                'price': 70,
            },
    );
          },
          child:Text("Trans"),
        )
        ],
      ),
    );
  }
}