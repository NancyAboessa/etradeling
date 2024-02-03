import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login.state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(initialState());

  static LoginCubit get(context) => BlocProvider.of(context);
  bool emailVerified = false;
  User? user;
  String? a;
  String? b;
  String? c;
  bool obscureText = true;
  List list = [];
  String emilv = "";
  String emaile = "";
  String passe = "";
  // bool valedCheck = false;
  //       emailVerified=  await FirebaseAuth.instance.currentUser!.emailVerified;
  emailVerifiedCubit() async {
    emailVerified = await FirebaseAuth.instance.currentUser!.emailVerified;
    emit(EmailVerifiedState());
  }

  userdata() {
    user = FirebaseAuth.instance.currentUser!;
    emit(UserDataState());
  }

  obscureTextCubit() {
    obscureText = !obscureText;
    emit(ObscureTextState());
  }

  loginPress() {
    print('login now');
  }

  signupPress() {
    print('sign up now');
  }

  NewPassword(email) {
    FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    emit(NewpassState());
  }

  SignInWithEamilandPass(email, pass) async {
    print(email);
    print(pass);
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      }
      if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      emaile = "user not found";
      passe = "Wrong password provided for that user";
      print(e.code);
    }

    emit(SuccessState());
  }

  sendData(uid, email, name) async {
    await FirebaseFirestore.instance.collection("Profile").doc(uid).set({
      "email": email,
      "name": name,
      "isVendore": false,
    });
    await FirebaseFirestore.instance
        .collection("Profile")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("Address");
    emit(SetDataState());
  }

  SignupWithEmailandpass(email, pass, name) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass)
          .then((value) {
        sendData(value.user!.uid, email, name);
      });
      await FirebaseAuth.instance.currentUser!.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        emilv = "email already exist";
      }
      log(e as String);
    }
    emit(SignUpState());
  }

  signUpWithFacebook() async {
    FacebookAuthProvider facebookProvider = FacebookAuthProvider();

    facebookProvider.addScope('email');
    facebookProvider.setCustomParameters({
      'display': 'popup',
    });

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithPopup(facebookProvider);
    emit(SignUpFaceBookState());
  }

  checkVal(val) async {
    if (list.length < 2) {
      a = val;
      list.add(val);
    }
    emit(CheckState());
  }

  checkVal1(val) async {
    if (list.length < 2) {
      b = val;
      list.add(val);
    }
    emit(Check1State());
  }

  checkVal2(val) async {
    if (list.length < 2) {
      c = val;
      list.add(val);
    }
    emit(Check2State());
  }

  vendorSignUp(
    email,
    pass,
    username,
    contry,
    aboutAs,
    taxCardNumber,
    factoryName,
    city,
    commercialRegistrationNo,
  ) async {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: pass);
    FirebaseFirestore.instance.collection("Profile").add({
      "user_id": FirebaseAuth.instance.currentUser!.uid,
      "name": username,
      "contry": contry,
      "aboutAs": aboutAs,
      "taxCardNumber": taxCardNumber,
      "factoryName": factoryName,
      "city": city,
      "commercialRegistrationNo": commercialRegistrationNo
    });
  }
}
