import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/chatpage.dart';
import 'package:project_uts_online_transportation/pages/template/template_nav_bar.dart';

class HomeChatPage extends StatefulWidget {
  const HomeChatPage({Key? key});

  @override
  _HomeChatPageState createState() => _HomeChatPageState();
}

class _HomeChatPageState extends State<HomeChatPage> {
  TextEditingController _searchController = TextEditingController();
  String searchText = '';
  List<Message> chatMessages = [];

  List<String> contacts = [
    "richard dajal",
    "deni",
    "celin",
    "joko",
    "jefri",
    "loli",
    "jordi",
    "lesti",
    "joni",
    "rudi",
  ];

  List<String> filteredContacts = [];

  late PageController _pageController;
  int _selectedIndex = 1;
  // index gw 2 karna order page urutan ke-3
  // 0 - 1 - 2 - 3
  @override
  void initState() {
    super.initState();
    // Inisialisasi daftar kontak yang telah difilter dengan semua kontak awal.
    filteredContacts = contacts;
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // if (index == 3) {
      //   Navigator.pushNamed(
      //     context,
      //     AccountPage.idScreen,
      //   );
      //   return;
      // }

      _pageController.animateToPage(
        _selectedIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOutQuad,
      );
    });
  }

  void _searchContacts() {
    setState(() {
      filteredContacts = contacts
          .where((contact) =>
              contact.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff213A82),
      body: Column(
        children: [
          Container(
            // padding: EdgeInsets.only(
            //   left: 20.0,
            //   right: 20.0,
            //   top: 50.0,
            //   bottom: 20.0,

            // ),
            height: 85,
            width: 420,
            // color: Colors.black,
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Positioned(
                  left: 40,
                  bottom: 10,
                  child: Text(
                    "Chat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Spacer(),
                // SizedBox(width: 10),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Image.asset(
                    'lib/assets/images/undraw_Chat_re_re1u.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 9,
                        child: TextField(
                          controller: _searchController,
                          onChanged: (value) {
                            setState(() {
                              searchText = value;
                            });
                          },
                          onEditingComplete: _searchContacts,
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 10,
                        child: Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: _searchContacts,
                            child: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Color(0xff213A82),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Contact list
          Expanded(
            flex: 18,
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: filteredContacts
                      .map((contact) => _buildContact(
                            "lib/assets/images/undraw_Pic_profile_re_7g2h.png",
                            contact,
                            "Pesan Terbaru",
                            "09.00",
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }

  Widget _buildContact(
      String pngAsset, String name, String lastMessage, String time) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(pngAsset),
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          SizedBox(width: 3),
          Text(
            lastMessage,
            style: TextStyle(fontSize: 13),
          )
        ],
      ),
      trailing: Text(time),
      onTap: () {
        // Navigate to the ChatScreen when a contact is tapped.
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(
              contactName: name,
              contactImage: pngAsset, // Mengimpor profil kontak ke ChatScreen
            ),
          ),
        );
      },
    );
  }
}

class Message {
  final String text;
  final bool isMe;

  Message(this.text, this.isMe);
}
