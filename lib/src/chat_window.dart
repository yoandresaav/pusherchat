import 'package:flutter/material.dart';



class ChatWindow extends StatefulWidget {
  const ChatWindow({Key key}) : super(key: key);

  @override
  _ChatWindowState createState() => _ChatWindowState();
}

class _ChatWindowState extends State<ChatWindow> {

  TextEditingController _text = new TextEditingController();
  ScrollController _scrollController = ScrollController();
  var childList = <Widget>[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chatea con ...'),
      ),
      body: Container(
        child: SafeArea(
          child: Container(
            child: Stack(
              fit: StackFit.loose,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      height: 65,
                      child: Container(
                        color: Colors.blueAccent,
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                //Navigator.pop(context);
                              },
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Jimi Cooke",
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                Text(
                                  "online",
                                  style: TextStyle(color: Colors.white60, fontSize: 12),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                              child: Container(
                                child: ClipRRect(
                                  child: Container(
                                      child: SizedBox(
                                        child: Image.asset(
                                          "assets/images/person1.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      color: Colors.orange),
                                  borderRadius: new BorderRadius.circular(50),
                                ),
                                height: 55,
                                width: 55,
                                padding: const EdgeInsets.all(0.0),
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 5.0,
                                          spreadRadius: -1,
                                          offset: Offset(0.0, 5.0))
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Colors.black54,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      // height: 500,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/chat-background-1.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.linearToSrgbGamma()),
                        ),
                        child: SingleChildScrollView(
                            controller: _scrollController,
                            // reverse: true,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: childList,
                            )),
                      ),
                    ),
                    Divider(height: 0, color: Colors.black26),
                    // SizedBox(
                    //   height: 50,
                    Container(
                      color: Colors.white,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                          maxLines: 20,
                          controller: _text,
                          decoration: InputDecoration(
                            // contentPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.send),
                              onPressed: () {},
                            ),
                            border: InputBorder.none,
                            hintText: "enter your message",
                          ),
                        ),
                      ),
                    ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      );
  }
}


