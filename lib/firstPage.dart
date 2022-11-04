import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/toggle.dart';
import 'package:sizer/sizer.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _toggleValue = 0;
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.message_sharp,
                  color: Colors.purple,
                  size: 2.h,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.sp),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  color: Colors.purple,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 43.w, top: 2.h),
              child: Text("Create Your Challenge here !!!",
                  style: TextStyle(fontSize: 4.w)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.sp),
              child: Container(
                color: Color.fromARGB(255, 165, 88, 180),
                padding: EdgeInsets.only(bottom: 1.h, top: 5.sp),
                margin: EdgeInsets.only(top: 3.h, bottom: 3.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 0.5.h, left: 10.sp),
                      child: Text("Mandatory Fields",
                          style:
                              TextStyle(fontSize: 3.5.w, color: Colors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0.3.h, left: 63.w),
                      child: Icon(Icons.keyboard_arrow_up,
                          size: 5.w, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.sp, right: 12.sp, top: 5.sp),
              child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Title',
                    hintText: 'Add Challenge Title',
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Title must not be empty';
                    } else if (_emailController.text.length > 2) {
                      return 'Title must be at least 3 characters.';
                    } else {
                      return null;
                    }
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.sp, right: 12.sp, top: 20.sp),
              child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                    hintText: 'Challenge Description',
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password must not be empty';
                    } else if (_passwordController.text.length < 2) {
                      return 'Password must be at least 3 characters.';
                    } else {
                      return null;
                    }
                  }),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.sp),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Choose Interest Category',
                        style: TextStyle(color: Colors.white, fontSize: 8.sp),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 146, 64, 160),
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.sp)),
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 2.h, bottom: 2.h),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 39.w),
                  child: Text(
                    "0 Interest Selected",
                    style: TextStyle(
                        color: Color.fromARGB(255, 91, 89, 89), fontSize: 8.sp),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 73.w),
                  child: Text(
                    "Upload again",
                    style: TextStyle(color: Colors.black, fontSize: 8.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.sp),
                  child: Icon(
                    Icons.upload,
                    color: Color.fromARGB(255, 121, 33, 137),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Column(children: <Widget>[
              Image.network(
                  'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  height: 400,
                  width: 250.sp),
            ]),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.sp, top: 2.h),
                  child: Text(
                    "Challenge type",
                    style: TextStyle(color: Colors.black, fontSize: 10.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.sp, top: 3.h),
                  child: Icon(Icons.remove_red_eye),
                )
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedToggle(
                    values: ['Short', 'Medium', 'Long'],
                    onToggleCallback: (value) {
                      setState(() {
                        _toggleValue = value;
                      });
                    },
                    buttonColor: const Color(0xFF0A3157),
                    backgroundColor: const Color(0xFFB5C1CC),
                    textColor: const Color(0xFFFFFFFF),
                  ),
                  // Text('Toggle Value : $_toggleValue'),
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.sp, top: 2.h),
                  child: Text(
                    "Challenge Schedule",
                    style: TextStyle(color: Colors.black, fontSize: 10.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.sp, top: 3.h),
                  child: Icon(Icons.remove_red_eye),
                )
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedToggle(
                    values: ['One Time', 'Multiple Time'],
                    onToggleCallback: (value) {
                      setState(() {
                        _toggleValue = value;
                      });
                    },
                    buttonColor: const Color(0xFF0A3157),
                    backgroundColor: const Color(0xFFB5C1CC),
                    textColor: const Color(0xFFFFFFFF),
                  ),
                  // Text('Toggle Value : $_toggleValue'),
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.sp, top: 2.h),
                  child: Text(
                    "Monitory / Non- Monitory Beneficials",
                    style: TextStyle(color: Colors.black, fontSize: 10.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.sp, top: 3.h),
                  child: Icon(Icons.remove_red_eye),
                )
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedToggle(
                    values: [
                      'Monitory Beneficials',
                      'Non- Monitory Beneficials',
                    ],
                    onToggleCallback: (value) {
                      setState(() {
                        _toggleValue = value;
                      });
                    },
                    buttonColor: const Color(0xFF0A3157),
                    backgroundColor: const Color(0xFFB5C1CC),
                    textColor: const Color(0xFFFFFFFF),
                  ),
                  // Text('Toggle Value : $_toggleValue'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.sp),
              child: Container(
                color: Color.fromARGB(255, 174, 166, 176),
                padding: EdgeInsets.only(bottom: 1.h, top: 5.sp),
                margin: EdgeInsets.only(top: 3.h, bottom: 3.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 0.5.h, left: 10.sp),
                      child: Text("Optional Fields",
                          style: TextStyle(
                              fontSize: 3.5.w,
                              color: Color.fromARGB(255, 64, 62, 62))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0.3.h, left: 65.w),
                      child: Icon(Icons.keyboard_arrow_down,
                          size: 5.w, color: Color.fromARGB(255, 80, 78, 78)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.sp, bottom: 10.h),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Post a Challenge',
                    style: TextStyle(color: Colors.white, fontSize: 8.sp),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 165, 96, 177),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.sp)),
                    padding: EdgeInsets.only(
                        left: 15.h, right: 15.h, top: 2.h, bottom: 2.h),
                  )),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: Color.fromARGB(255, 209, 114, 180),
                width: 2,
                style: BorderStyle.solid)),
        width: 80,
        height: 80,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(Icons.block,
              color: Color.fromARGB(255, 176, 73, 195), size: 6.w),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: Container(
        height: 6.h,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.sp),
          ),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 4.sp,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.sp),
                child: IconButton(
                  icon: Icon(
                    Icons.home,
                    size: 5.w,
                  ),
                  onPressed: () {},
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.play_circle,
                  size: 5.w,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  size: 5.w,
                ),
                onPressed: () {},
              ),
              Padding(
                padding: EdgeInsets.only(right: 12.sp),
                child: IconButton(
                  icon: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Icon(
                      Icons.person,
                      size: 5.w,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
