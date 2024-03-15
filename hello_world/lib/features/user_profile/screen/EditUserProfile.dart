import 'package:flutter/material.dart';

class EditUserProfileScreen extends StatefulWidget {
  const EditUserProfileScreen({super.key});

  @override
  _EditUserProfileScreenState createState() => _EditUserProfileScreenState();
}

class _EditUserProfileScreenState extends State<EditUserProfileScreen> {
  late TextEditingController _fullnameController;
  late String _fullName = "Ta Minh Dang";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Edit Profile"),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 200,
                                child: Column(
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Choose source image option",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    TextButton(
                                      style: const ButtonStyle(
                                        overlayColor: MaterialStatePropertyAll(
                                            Colors.transparent),
                                      ),
                                      child: const ListTile(
                                        leading: Icon(Icons.camera_alt_rounded),
                                        title: Text("Camera"),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    TextButton(
                                      style: const ButtonStyle(
                                        overlayColor: MaterialStatePropertyAll(
                                            Colors.transparent),
                                      ),
                                      child: const ListTile(
                                        leading: Icon(Icons.image),
                                        title: Text("Gallery"),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: const CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            AssetImage("assets/images/profile.jpeg"),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      _fullName,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        controller: _fullnameController,
                        decoration: const InputDecoration(
                            hintText: 'FullName',
                            icon: Icon(Icons.person),
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                      onPressed: () {
                        setState(() {
                          _fullName = _fullnameController.text;
                          _fullnameController.clear();
                        });
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                            "Update",
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              ),
            )));
  }

  @override
  void initState() {
    super.initState();
    _fullnameController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
