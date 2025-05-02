import 'package:dummy_projects/Features/screenss/authorization_repository.dart';
import 'package:dummy_projects/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'auth_controler.dart' as _authRepository;




final authControllerProvider = Provider(
        (ref) => AuthController(
            authRepository: ref.read(authRepositoryProvider)));


class AuthController extends StateNotifier<User?> {
  final AuthRepository _authRepository;

  AuthController({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(null);

  Stream<User?> get authStateChange => _authRepository.authStateChange;

  void signInWithGoogle() {
    _authRepository.signInWithGoogle();

  }
}


  Stream<UserModel> getUserData(String uid) {
    return _authRepository.getUserData(uid);
  }


