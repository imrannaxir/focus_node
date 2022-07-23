import 'package:flutter/material.dart';

class MyFocusNode extends StatefulWidget {
  const MyFocusNode({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<MyFocusNode> createState() => _MyFocusNodeState();
}

class _MyFocusNodeState extends State<MyFocusNode> {

  FocusNode firstNameFocusNode = FocusNode();
  FocusNode secondNameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode insertFocusNode = FocusNode();
  FocusNode updateFocusNode = FocusNode();
  FocusNode deleteFocusNode = FocusNode();
  FocusNode enableButtonFocusNode = FocusNode();
  FocusNode disableButtonFocusNode = FocusNode();


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size ;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.search,size: 32,),
        ],
      ),
      body: myFocusNode(size),
      drawer: myDrawer(),
      floatingActionButton: myFloatingActionButton(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget myFocusNode(size){
    return Container(
      height: size.height - kToolbarHeight-70,
      width: size.width,
      color: Colors.amber,
      child: Column(
        children: [
          Center(
            child: SizedBox(
              height: size.height*0.15,
              width: size.width*0.8,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextField(
                  focusNode: firstNameFocusNode,
                  decoration: const InputDecoration(
                    hintText: 'Enter Your First_Name :',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    labelText: 'Enter Your First_Name :',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30),
                        ),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 3,
                        )
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height*0.15,
            width: size.width*0.8,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextField(
                focusNode: secondNameFocusNode,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Last_Name :',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: 'Enter Your Last_Name :',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3,
                      )
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height*0.15,
            width: size.width*0.8,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextField(
                focusNode: emailFocusNode,
                decoration: const InputDecoration(
                  hintText: 'Enter Your E_Mail :',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: 'Enter Your E_Mail :',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3,
                      )
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height*0.15,
            width: size.width*0.8,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextField(
                focusNode: passwordFocusNode,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Password :',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: 'Enter Your Password :',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3,
                      )
                  ),
                ),
              ),
            ),
          ),


          TextButton(
            focusNode: insertFocusNode,
              onPressed: (){},
              child: const Text(
                'INSERT',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          TextButton(
            focusNode: updateFocusNode,
            onPressed: (){},
            child: const Text('UPDATE',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          TextButton(
            focusNode: deleteFocusNode,
            onPressed: (){},
            child: const Text('DELETE',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myFloatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
         focusNode: enableButtonFocusNode,
          onPressed: (){
           updateFocusNode.skipTraversal = false ;
           deleteFocusNode.skipTraversal = false ;
           enableButtonFocusNode.skipTraversal = false ;
           disableButtonFocusNode.skipTraversal = false ;
          },
          tooltip: "ENABLE",
          child: const Icon(Icons.phone_enabled),
        ),
        FloatingActionButton(
          focusNode: disableButtonFocusNode,
          onPressed: (){
            updateFocusNode.skipTraversal = true ;
            deleteFocusNode.skipTraversal = true ;
            enableButtonFocusNode.skipTraversal = true ;
            disableButtonFocusNode.skipTraversal = true ;
          },
          tooltip: 'DISABLE',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: (){
          emailFocusNode.requestFocus();
        },
          child: const Icon(Icons.access_alarm),
        ),
      ],
    );
  }

  Widget myBottomNavigationBar(){
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 32,),label: 'Home Page'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance,size: 32,),label: 'My Account'),
          BottomNavigationBarItem(icon: Icon(Icons.delete,size: 32,),label: 'Delete Data'),
        ],
      ),
    );
  }

  Widget myDrawer(){
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.red,
            child: const DrawerHeader(
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: ListTile(
              leading: Icon(Icons.person,size: 32,),
              title: Text(
                'JANU',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.delete,size: 32,),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: ListTile(
              leading: Icon(Icons.account_balance,size: 32,),
              title: Text(
                'My Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.delete,size: 32,),
            ),
          ),
        ],
      ),
    );
  }
}
