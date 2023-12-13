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
  //       emailVerified=  await FirebaseAuth.instance.currentUser!.emailVerified;
  emailVerifiedCubit() async {
    emailVerified = await FirebaseAuth.instance.currentUser!.emailVerified;
    emit(EmailVerifiedState());
  }

  userdata() {
    user = FirebaseAuth.instance.currentUser!;
    emit(UserDataState());
  }

  loginPress() {
    print('login now');
  }

  signupPress() {
    print('sign up now');
  }

  NewPassword() {
    print('new pass now');
    //  emit(NewpassState());
  }

  SignInWithEamilandPass(email, pass) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: pass);
    emit(SuccessState());
  }

  sendData() async {
    await FirebaseFirestore.instance
        .collection("Profile")
        .add({"user_id": FirebaseAuth.instance.currentUser!.uid});
    await FirebaseFirestore.instance
        .collection("Profile")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("Address");
    emit(SetDataState());
  }

  SignupWithEmailandpass(email, pass) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass);
      await FirebaseAuth.instance.currentUser!.sendEmailVerification();
      await sendData();
    } on Exception catch (e) {
      log(e as String);
    }
    emit(SignUpState());
  }
}
