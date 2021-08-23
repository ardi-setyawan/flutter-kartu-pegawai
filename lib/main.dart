import 'package:flutter/material.dart';
import 'package:ardi/friends-list.dart';

void main() => runApp(MaterialApp(
  home: KartuPegawai(),
));

class KartuPegawai extends StatefulWidget {
  @override

  _KartuPegawaiState createState() => _KartuPegawaiState();
}

class _KartuPegawaiState extends State<KartuPegawai> {
  //pendeklarasian variable
  int tingkatpegawai = 0;


  Future navigateToFriendsPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => FriendsList()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],

      //berisi code yang akan di tampilkan sebagai judul aplikasi
      appBar: AppBar(
        title: Text('Kartu Pegawai'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent[850],
        elevation: 0.0,
      ),

      //berisi kode untuk menambahkan tingkat pegawai
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            tingkatpegawai += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          //kode yang di gunakan untuk menampilkan gambar
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'),
                radius: 40,
              ),
            ),


            Divider(
              height: 90.0,
              color: Colors.grey,
            ),

            //Widget Text untuk menampilkan text statis nama
            Text(
              'Nama Pegawai',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),

            //Widget Text untuk menampilkan text statis isi nama
            Text(
              'Ardi Setyawan',
              style: TextStyle(
                color: Colors.blueAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),

        //Menammpilkan teks tingat pegawai
            Text(
              'Tingkat Pegawai  ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),


            Text(
              '$tingkatpegawai',
              style: TextStyle(
                color: Colors.blueAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
        //menampilkan icon email dan alammat email
            Row(
              children: <Widget>[

                Icon(
                  Icons.email,
                  color: Colors.blueAccent[400],
                ),
                SizedBox(
                  width: 10.0,
                ),


                Text(
                  'ardisetyawan1621@gmail.com',
                  style: TextStyle(
                    color: Colors.blueAccent[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),

            Divider(
              height: 100.0,
              color: Colors.grey,
            ),
        //tampiln pada daftar pegawai
            RaisedButton(
              color: Colors.lightBlueAccent[200],
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text('Daftar Pegawai',
                  style: TextStyle(color: Colors.black, fontSize: 18.0)),
              onPressed: () {

                navigateToFriendsPage(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
