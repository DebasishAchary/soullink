import '../datasources/firebase_auth_datasource.dart';
import '../models/user_model.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';

class FirebaseAuthRepository implements AuthRepository {
  final FirebaseAuthDataSource dataSource;

  FirebaseAuthRepository(this.dataSource);

  @override
  Future<UserEntity?> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final credential = await dataSource.register(
      name: name,
      email: email,
      password: password,
    );

    final user = credential.user;

    if (user == null) return null;

    return UserModel(
      id: user.uid,
      name: user.displayName ?? name,
      email: user.email ?? email,
      photoUrl: user.photoURL,
    );
  }

  @override
  Future<UserEntity?> signIn({
    required String email,
    required String password,
  }) async {
    final credential = await dataSource.login(
      email: email,
      password: password,
    );

    final user = credential.user;

    if (user == null) return null;

    return UserModel(
      id: user.uid,
      name: user.displayName ?? '',
      email: user.email ?? '',
      photoUrl: user.photoURL,
    );
  }

  @override
  Future<void> sendPasswordResetEmail(String email) {
    return dataSource.sendPasswordResetEmail(email);
  }

  @override
  Future<void> signOut() {
    return dataSource.logout();
  }

  @override
  Future<UserEntity?> currentUser() async {
    final user = dataSource.currentUser;

    if (user == null) return null;

    return UserModel(
      id: user.uid,
      name: user.displayName ?? '',
      email: user.email ?? '',
      photoUrl: user.photoURL,
    );
  }
}