import 'package:flutter/material.dart';

class PosPage extends StatefulWidget {
  const PosPage({super.key});

  @override
  State<PosPage> createState() => _PosPageState();
}

class CheckBoxModal {
  String title;
  bool value;
  CheckBoxModal({required this.title, this.value = false});
}

class _PosPageState extends State<PosPage> {
  int _value = 0;
  final _checkColor =
      CheckBoxModal(title: 'Sử dụng màu sắc để phân biệt (nếu có)');
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cua hang
            Container(
              padding: new EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                    text: 'Cửa Hàng',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),

            Column(children: [
              Container(
                child: Row(children: [
                  Container(
                    padding: new EdgeInsets.all(20.0),
                    child: RichText(
                      text: TextSpan(
                          text: 'Tên CH:',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    child: Text('TEST-2 Ba Tháng Hai'),
                  ),
                ]),
              ),
              Container(
                  child: Row(children: [
                Container(
                  padding: new EdgeInsets.all(20.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'Địa Chỉ:',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(child: Text('2 Đường 3/2, Quận 10'))
              ]))
            ]),

            // Kieu Menu
            Container(
              padding: new EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: RichText(
                text: TextSpan(
                    text: 'Kiểu Menu',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            // radio button

            Row(children: [
              Padding(padding: EdgeInsets.all(20.0)),
              Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(5)),
                  child: RadioListTile(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                    title: Text('Menu dọc'),
                  )),
              Padding(padding: EdgeInsets.all(20.0)),
              Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(5)),
                  child: RadioListTile(
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                    title: Text('Menu ngang'),
                  ))
            ]),
            //Check box

            Row(
              children: <Widget>[
                Container(
                    padding: new EdgeInsets.fromLTRB(20, 0, 0, 0),
                    height: 50,
                    width: 400,
                    child: ListTile(
                        onTap: () {
                          setState(() {
                            _checkColor.value = !_checkColor.value;
                          });
                        },
                        leading: Checkbox(
                            value: _checkColor.value,
                            onChanged: (value) {
                              setState(() {
                                _checkColor.value = !_checkColor.value;
                              });
                            }),
                        title: Text(_checkColor.title)))
              ],
            ),
            Container(
              padding: new EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: RichText(
                text: TextSpan(
                    text: 'Dữ liệu POS',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            Container(
              padding: new EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: RichText(
                text: TextSpan(
                    text: 'Tài Khoản',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            Column(children: [
              Container(
                child: Row(children: [
                  Container(
                    padding: new EdgeInsets.all(20.0),
                    child: RichText(
                      text: TextSpan(
                          text: 'Tên:',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    child: Text('POS Test'),
                  ),
                ]),
              ),
              Container(
                  child: Row(children: [
                Container(
                  padding: new EdgeInsets.all(20.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'Email:',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(child: Text('postest@gutacafe.com'))
              ]))
            ]),
            Container(
              padding: new EdgeInsets.fromLTRB(20, 0, 0, 0),
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Center(
                  child: Text('Đăng xuất khỏi POS'),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
              ),
            ),
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(children: [
                      Expanded(
                          child: Container(
                              padding: new EdgeInsets.all(10.0),
                              width: 180,
                              height: 50,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.save_rounded),
                                label: Text('Lưu cài đặt'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.blue[900])),
                              ))),
                      Expanded(
                        child: Container(
                          padding: new EdgeInsets.all(10.0),
                          width: 180,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Center(
                              child: Text('Đóng'),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black38)),
                          ),
                        ),
                      ),
                    ])
                  ]),
            )
          ],
        ),
      );
}
