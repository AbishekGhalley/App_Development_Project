import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/constants/constants.dart';
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
      appBar: TopAppbar(toptitle: "Profile"),
      body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(20),
                    vertical: ScreenUtil().setHeight(20)),
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
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: ScreenUtil().setWidth(180),
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
                                SizedBox(height: ScreenUtil().setHeight(8)),
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
                            padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
                            child: CircleAvatar(
                              radius: ScreenUtil().setWidth(50),
                              backgroundImage: AssetImage(HamAssets.db),
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
                      SizedBox(width: ScreenUtil().setWidth(16)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
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
                      leading: Image.asset(HamAssets.driverlicense),
                      title: Text(
                        'Driving License',
                        style: TextStyle(
                          color: Color(0xFF1C1C1C),
                          fontSize: ScreenUtil().setSp(16),
                          fontFamily: 'Sen',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: const Addbtn()),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
                child: Text(
                  'Saved Locations',
                  style: TextStyle(
                    color: Color(0xFF1C1C1C),
                    fontSize: ScreenUtil().setSp(21),
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(15),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
                child: Container(
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(16),
                      right: ScreenUtil().setWidth(20),
                      top: ScreenUtil().setHeight(10),
                      bottom: ScreenUtil().setHeight(16)),
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
                          Image.asset(HamAssets.homebutton),
                          SizedBox(
                            width: ScreenUtil().setWidth(10),
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: Color(0xFF1C1C1C),
                              fontSize: ScreenUtil().setSp(21),
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
                          height: ScreenUtil().setHeight(160),
                          child: ListView.builder(
                              itemCount: locals.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int i) {
                                return Column(
                                  children: [
                                    Text(
                                      locals[i].address,
                                      style: TextStyle(
                                        color: Pallete.textColor,
                                        fontSize: ScreenUtil().setSp(16),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: ScreenUtil().setHeight(10),
                                    ),
                                    const Divider(
                                      height: 1,
                                      thickness: 1,
                                      color: Pallete.partitionlineColor,
                                    ),
                                    SizedBox(
                                      height: ScreenUtil().setHeight(10),
                                    ),
                                  ],
                                );
                              })),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(20),
                    vertical: ScreenUtil().setHeight(20)),
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
                      leading: Image.asset(HamAssets.portfolio),
                      title: Text(
                        'Work',
                        style: TextStyle(
                          color: Color(0xFF1C1C1C),
                          fontSize: ScreenUtil().setSp(16),
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
