// https://www.kindacode.com/article/flutter-create-gradient-background-buttons/

Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('Hi there');
          },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
                borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: 300,
              height: 100,
              alignment: Alignment.center,
              child: Text(
                'Button',
                style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ),
      ),
    );
  }




// Type 2

idget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Center(
          child: Container(
        width: 300,
        height: 100,
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.orange, Colors.green],
          ),
        ),
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: StadiumBorder(),
          child: Text(
            'A Samll Button',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            print('Hello!');
          },
        ),
      )),
    );
  }
