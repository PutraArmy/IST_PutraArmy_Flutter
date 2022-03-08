import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme/colors/light_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // UsersModel usersList = UsersModel();
  // UserBloc _userBloc = UserBloc();

  final TextEditingController input_n_controller = new TextEditingController();
  String value_n = "";

  List<String> hasil = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        title: Text("Test Mobile Developer"),
        elevation: 0,
      ),
      body:
          // MultiBlocListener(
          //   listeners: [
          //     BlocListener<UserBloc, UserState>(
          //       listener: (context, state) {
          //         if (state is UsersListError) {}
          //         if (state is UsersListWaiting) {
          //           print("Loading data");
          //         }
          //         if (state is UsersListSuccess) {
          //           if (state.usersList.data == null) {
          //             // _lastDataFlashsaleBanner = true;
          //             print("Tidak ada data");
          //           } else {
          //             // usersList = state.usersList;

          //             if (pageNumber <= 1) {
          //               usersList = state.usersList;
          //             } else {
          //               for (var i = 0; i < usersList.data!.length; i++) {
          //                 usersList.data?.add(state.usersList.data!.elementAt(i));
          //               }
          //             }

          //             print("masuk datanya beres" +
          //                 usersList.data!.length.toString());
          //             // print("Code" + usersList.data!.elementAt(0).firstName);
          //           }
          //         }
          //       },
          //     ),
          //   ],
          //   child:
          Container(
        margin: EdgeInsets.all(50),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    value_n = value;
                    print(value_n);
                  });
                },
                keyboardType: TextInputType.number,
                controller: input_n_controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Input N",
                    hintStyle: TextStyle(color: Colors.grey[400])),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => hasil = perhitungan(1, value_n),
                  child: btnWidget(1, value_n),
                ),
                InkWell(
                  onTap: () => hasil = perhitungan(2, value_n),
                  child: btnWidget(2, value_n),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => hasil = perhitungan(3, value_n),
                  child: btnWidget(3, value_n),
                ),
                InkWell(
                  onTap: () => hasil = perhitungan(4, value_n),
                  child: btnWidget(4, value_n),
                ),
              ],
            ),
            SizedBox(height: 50),
            Align(alignment: Alignment.centerLeft, child: Text("Result")),
            SizedBox(height: 20),
            Align(alignment: Alignment.centerLeft, child: Text("1 2 3 4 5"))
          ],
        ),
      ),
    );
  }

  Widget btnWidget(int angka, String n) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(2, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Center(child: Text(angka.toString())),
    );
  }

  List<String> perhitungan(int angka, String n) {
    int n_nya = int.parse(n);
    List<String> hasil = [];

    print(n_nya);
    if (angka == 1) {
      for (var i = 1; i <= n_nya; i++) {
        hasil.add(i.toString());
      }
    }

    if (angka == 2) {
      for (var i = 1; i <= n_nya; i++) {
        hasil.add(i.toString());
      }

      for (var i = n_nya - 1; i > 0; i--) {
        hasil.add(i.toString());
      }
    }

    if (angka == 3) {
      for (var i = 1; i <= n_nya; i++) {
        int puluhan = i * 10;
        int satuan = i - 1;
        int hasilnya = puluhan + satuan;
        hasil.add(hasilnya.toString());
      }
    }

    if (angka == 4) {
      for (var i = 1; i <= n_nya; i++) {
        if (i == 5) {
          hasil.add("LIMA");
        } else if (i == 7) {
          hasil.add("TUJUH");
        } else {
          hasil.add(i.toString());
        }
      }
    }

    print(hasil);

    return hasil;
  }
}
