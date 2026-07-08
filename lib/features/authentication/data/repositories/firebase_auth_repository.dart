import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';

class FirebaseAuthRepository implements AuthRepository {
  @override
  Future<UserEntity?> currentUser() async {
    return null;
  }

  @override
  Future<UserEntity?> register({
    required String name,
    required String email,
    required String password,
  }) async {
    return null;
  }

  @override
  Future<void> sendPasswordResetEmail(
    String email,
  ) async {}

  @override
  Future<UserEntity?> signIn({
    required String email,
    required String password,
  }) async {
    return null;
  }

  @override
  Future<void> signOut() async {}
}