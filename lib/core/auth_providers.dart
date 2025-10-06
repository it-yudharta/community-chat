import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../repositories/auth_repository.dart';

final supabaseClientProvider = Provider((ref) => Supabase.instance.client);

final authRepositoryProvider = Provider((ref) => AuthRepository(ref.watch(supabaseClientProvider)));

final authStateProvider = StreamProvider((ref) => ref.watch(authRepositoryProvider).authStateChanges);
