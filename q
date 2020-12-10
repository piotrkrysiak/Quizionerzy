   Column(
          children: <Widget>[
            Container(
              width: sizeX - 20,
              child: RaisedButton(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: Color(0xFF092593),
                child:
                    Text("A: Zielony ", style: TextStyle(color: Colors.white)),
                onPressed: () {},
              ),
            ),
            Container(
              width: sizeX - 20,
              margin: EdgeInsets.only(top: 1),
              child: RaisedButton(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: Color(0xFF092593),
                child: Text("B: Biały ", style: TextStyle(color: Colors.white)),
                onPressed: () {},
              ),
            ),
            Container(
              width: sizeX - 20,
              margin: EdgeInsets.only(top: 1),
              child: RaisedButton(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: Color(0xFF092593),
                child: Text("C: Niebieski ",
                    style: TextStyle(color: Colors.white)),
                onPressed: () {},
              ),
            ),
            Container(
              width: sizeX - 20,
              margin: EdgeInsets.only(top: 1),
              child: RaisedButton(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: Color(0xFF092593),
                child: Text("D: eeeee ", style: TextStyle(color: Colors.white)),
                onPressed: () {},
              ),
            ),
          ],
        ),