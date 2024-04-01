import 'package:flutter/material.dart';
import 'package:flutter_tubes_galon/common/widgets/screen_template.dart';
import 'package:flutter_tubes_galon/utils/constants/sizes.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTemplate(
        title: "Pesanan",
        child: Column(
          children: [
            SizedBox(height: AppSizes.defaultSpace),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5.0),
                    decoration: BoxDecoration(
                      border: _selectedIndex == 0
                          ? Border(
                              bottom:
                                  BorderSide(color: Colors.blue, width: 2.0))
                          : null,
                    ),
                    child: Text(
                      'Dalam Proses',
                      style: TextStyle(
                        color: _selectedIndex == 0 ? Colors.blue : Colors.black,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5.0),
                    decoration: BoxDecoration(
                      border: _selectedIndex == 1
                          ? Border(
                              bottom:
                                  BorderSide(color: Colors.blue, width: 2.0))
                          : null,
                    ),
                    child: Text(
                      'Terjadwal',
                      style: TextStyle(
                        color: _selectedIndex == 1 ? Colors.blue : Colors.black,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5.0),
                    decoration: BoxDecoration(
                      border: _selectedIndex == 2
                          ? Border(
                              bottom:
                                  BorderSide(color: Colors.blue, width: 2.0))
                          : null,
                    ),
                    child: Text(
                      'Selesai',
                      style: TextStyle(
                        color: _selectedIndex == 2 ? Colors.blue : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            _buildBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    if (_selectedIndex == 0) {
      return Card(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Aqua' + ', Bojongsoang'),
                subtitle: Text('Sedang Diantar'),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/icons/brands/aqua.png'),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Aqua' + ', Bojongsoang'),
                subtitle: Text('Sedang Diantar'),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/icons/brands/aqua.png'),
                ),
              ),
            ),
          ],
        ),
      );
    } else if (_selectedIndex == 1) {
      return Card(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Aqua' + ', Bojongsoang'),
                subtitle: Text('Senin, 01 April 2024 jam 08:00 - 08:10'),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/icons/brands/aqua.png'),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Aqua' + ', Bojongsoang'),
                subtitle: Text('Senin, 07 April 2024 jam 08:00 - 08:10'),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/icons/brands/aqua.png'),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Card(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Aqua' + ', Bojongsoang'),
                subtitle: Text('Galon Sudah Sampai'),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/icons/brands/aqua.png'),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Aqua' + ', Bojongsoang'),
                subtitle: Text('Galon Sudah Sampai'),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/icons/brands/aqua.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
