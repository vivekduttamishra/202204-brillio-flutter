import 'package:flutter/material.dart';

import '../screens/book-list-screen.dart';
import '../screens/user-login-screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:20,),
      child: Column(children: [
        Text("Books App",  style: Theme.of(context).textTheme.headlineLarge),
        ListTile(
          onTap:(){
            Navigator.of(context).pushReplacementNamed(BookListScreen.id);
          },
          leading: Icon(Icons.login_outlined),
          title: Text('Books'),
          //subtitle: Text('Login to enjoy Member\'s benefits'),

        ),
        ListTile(
          onTap:(){
            Navigator.of(context).pushReplacementNamed(UserLoginScreen.id);
          },
          leading: Icon(Icons.login_outlined),
          title: Text('User Login'),
          //subtitle: Text('Login to enjoy Member\'s benefits'),

        ),
        ListTile(
          onTap:(){print('Register');},
          leading: Icon(Icons.verified_user),
          title: Text('User Register'),
         // subtitle: Text('Login to enjoy Member\'s benefits'),
        ),
      ]),
    );
  }
}
