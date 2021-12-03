import 'package:crm_software/screens/authentication/componenets/component.dart';
import 'package:crm_software/screens/bottom_navbar_screens/component/component.dart';
import 'package:crm_software/screens/bottom_navbar_screens/profile/comonent/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24,
          ),
          Stack(
            children: [
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/kitchen.jpg'),
                        fit: BoxFit.cover)),
              ),
              InkWell(
                  onTap: ()=> Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, top: 10),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 25,
                    ),
                    backgroundColor: Colors.black26,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/owner.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                InkWell(
                  onTap: () => buildBottomSheetEdit(
                      context: context,
                      mainText: 'Username',
                      textFormField: textFormField(
                        context: context,
                        labelText: 'Username',
                        obscureText: false,
                        hintText: 'Ibrahim Amin',
                        controller: usernameController,
                        type: TextInputType.text,
                      )),
                  child: buildEditProfileCard(
                    context: context,
                      title: 'Username',
                      icon: Icons.person_outline,
                      subTitle: 'Ibrahim Amin'),
                ),
                myDivider(height: 1),
                InkWell(
                  onTap: ()=> buildBottomSheetEdit(
                    context: context,
                    mainText: 'Email',
                      textFormField: textFormField(
                        context: context,
                        labelText: 'Email',
                        obscureText: false,
                        hintText: 'ibrahimamin081@gmail',
                        controller: emailController,
                        type: TextInputType.emailAddress,
                      ),),
                  child: buildEditProfileCard(
                      context: context,
                      title: 'Email',
                      icon: Icons.email_outlined,
                      subTitle: 'ibrahimamin081@gmail.com'),
                ),
                myDivider(height: 1),
                InkWell(
                  onTap: ()=> buildBottomSheetEdit(
                      context: context,
                      mainText: 'Phone',
                      textFormField: textFormField(
                        context: context,
                        labelText: 'Phone',
                        obscureText: false,
                        hintText: '01022952483',
                        controller: phoneController,
                        type: TextInputType.phone,
                      ),
                  ),
                  child: buildEditProfileCard(
                      context: context,
                      title: 'Phone',
                      icon: Icons.phone_outlined,
                      subTitle: '01022952483'),
                ),
                myDivider(height: 1),
                InkWell(
                  onTap: (){
                    buildBottomSheetEdit(
                      context: context,
                      mainText: 'Password',
                      textFormField: Column(
                        children: [
                          textFormField(
                            maxLines: 1,
                            context: context,
                            labelText: 'New Password',
                            obscureText: true,
                            hintText: 'New Password',
                            controller: passwordController,
                            type: TextInputType.visiblePassword,
                          ),
                          SizedBox( height: 10,),
                          textFormField(
                            context: context,
                            labelText: 'Confirm Password',
                            obscureText: false,
                            hintText: 'Confirm Password',
                            controller: confirmPasswordController,
                            type: TextInputType.visiblePassword,
                          ),
                        ],
                      ),);
                  },
                child: buildEditProfileCard(
                      context: context,
                      title: 'Password',
                      icon: Icons.lock_outlined,
                      subTitle: '******'),
                ),
                myDivider(height: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
