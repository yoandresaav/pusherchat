


import 'package:flutter/material.dart';

import 'chat_window.dart';

class RoutingPusherChat {
  void launchChat(BuildContext context){
    print('Lanzando el chat!!!');
    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatWindow()));
  }
}