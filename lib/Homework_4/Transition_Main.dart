import 'package:flutter/material.dart';

class TransitionMainPage extends StatelessWidget {
  const TransitionMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        title: Text(
          "MAIN PAGE",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PageA()));
                  },
                  child: Text("GO PAGE A",style: TextStyle(fontSize: 20),),
                  style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PageX()));
                    },
                    child: Text("GO PAGE X",style: TextStyle(fontSize: 20),),
                  style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageA extends StatelessWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text(
          "PAGE A",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PageB()));
                  },
                  child: Text("GO PAGE B",style: TextStyle(fontSize: 20),),
                  style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageB extends StatelessWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: Text(
          "PAGE B",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PageY()));
                  },
                  child: Text("GO PAGE Y",style: TextStyle(fontSize: 20),),
                  style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageX extends StatelessWidget {
  const PageX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "PAGE X",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PageY()));
                  },
                  child: Text("GO PAGE Y",style: TextStyle(fontSize: 20),),
                  style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageY extends StatelessWidget {
  const PageY({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          "PAGE Y",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TransitionMainPage()));
                  },
                  child: Text("GO BACK",style: TextStyle(fontSize: 20),),
                  style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
