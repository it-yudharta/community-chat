import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository {
  AuthRepository(this._supabaseClient);

  final SupabaseClient _supabaseClient;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _supabaseClient.auth.signInWithPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      // TODO: Handle error
      rethrow;
    }
  }

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    try {
      await _supabaseClient.auth.signUp(
        email: email,
        password: password,
      );
    } catch (e) {
      // TODO: Handle error
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await _supabaseClient.auth.signOut();
    } catch (e) {
      // TODO: Handle error
      rethrow;
    }
  }

  Stream<User?> get authStateChanges => _supabaseClient.auth.onAuthStateChange.map((authState) => authState.session?.user);
}
