import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myekigai/constants/assets_constants.dart';
import 'package:myekigai/features/hamburger/view/content_model_profile.dart';
import 'package:myekigai/features/hamburger/widgets/Add_btn.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/theme/pallete.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  String? _selectedGender;
  TextEditingController _emergencyContactsController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _emergencyContactsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppbar(toptitle: "Profile"),
      body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(171, 171, 171, 0.25),
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                      blurRadius: 1,
                    ),
                    BoxShadow(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                      blurRadius: 0,
                    ),
                  ]),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: TextField(
                                    controller: _nameController,
                                    decoration: const InputDecoration(
                                      labelText: 'Name',
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                SizedBox(
                                  width: double.infinity,
                                  child: TextField(
                                    controller: _phoneController,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.phone,
                                    decoration: const InputDecoration(
                                      labelText: 'Phone Number',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            child: const CircleAvatar(
                              radius: 50.0,
                              backgroundImage: AssetImage(AssetsConstants.db),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: 'Gender',
                            border: InputBorder.none,
                          ),
                          value: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          },
                          items: const [
                            DropdownMenuItem(
                              value: 'Male',
                              child: Text('Male'),
                            ),
                            DropdownMenuItem(
                              value: 'Female',
                              child: Text('Female'),
                            ),
                            DropdownMenuItem(
                              value: 'Other',
                              child: Text('Other'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: TextField(
                          controller: _emergencyContactsController,
                          maxLines: 2,
                          decoration: const InputDecoration(
                            labelText:
                                'Emergency Contacts', // Updated label text
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(171, 171, 171, 0.25),
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                      blurRadius: 1,
                    ),
                    BoxShadow(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                      blurRadius: 0,
                    ),
                  ]),
                  child: ListTile(
                      leading: Image.asset(AssetsConstants.driverlicense),
                      title: const Text(
                        'Driving License',
                        style: TextStyle(
                          color: Color(0xFF1C1C1C),
                          fontSize: 16,
                          fontFamily: 'Sen',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: const Addbtn()),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  'Saved Locations',
                  style: TextStyle(
                    color: Color(0xFF1C1C1C),
                    fontSize: 21,
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 16, right: 20, top: 10, bottom: 16),
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(171, 171, 171, 0.25),
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                      blurRadius: 1,
                    ),
                    BoxShadow(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                      blurRadius: 0,
                    ),
                  ]),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(AssetsConstants.homebutton),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'Home',
                            style: TextStyle(
                              color: Color(0xFF1C1C1C),
                              fontSize: 21,
                              fontFamily: 'Sen',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          const Addbtn()
                        ],
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: 160,
                          child: ListView.builder(
                              itemCount: locals.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int i) {
                                return Column(
                                  children: [
                                    Text(
                                      locals[i].address,
                                      style: const TextStyle(
                                        color: Pallete.textColor,
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Divider(
                                      height: 1,
                                      thickness: 1,
                                      color: Pallete.partitionlineColor,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                );
                              })),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(171, 171, 171, 0.25),
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                        blurRadius: 1,
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                        blurRadius: 0,
                      ),
                    ]),
                    child: ListTile(
                      leading: Image.asset(AssetsConstants.portfolio),
                      title: const Text(
                        'Work',
                        style: TextStyle(
                          color: Color(0xFF1C1C1C),
                          fontSize: 16,
                          fontFamily: 'Sen',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: const Addbtn(),
                    )),
              )
            ],
          )),
    );
  }
}
