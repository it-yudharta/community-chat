# Blueprint: Community Chat App

## Ringkasan

Aplikasi "Community Chat" adalah platform komunikasi realtime yang terinspirasi dari Discord, dibangun menggunakan Flutter dan Supabase. Pengguna dapat membuat komunitas, bergabung ke dalam channel, dan berinteraksi melalui pesan teks secara langsung.

## Fitur & Teknologi

- **UI Framework**: Flutter
- **Backend**: Supabase
  - **Authentication**: Email/Password, Google, GitHub (via `supabase_flutter`)
  - **Database**: Supabase Postgres untuk data pengguna, channel, dan pesan.
  - **Realtime**: Supabase Realtime untuk sinkronisasi pesan live.
  - **Storage**: Supabase Storage untuk file seperti gambar profil.
- **State Management**: flutter_riverpod
- **Arsitektur**: Repository Pattern, dengan pemisahan yang jelas antara UI dan logika bisnis.

## Desain & Gaya

- **Tema**: Menggunakan Material 3 dengan `ColorScheme.fromSeed`.
- **Tipografi**: Memanfaatkan `google_fonts` untuk tampilan teks yang modern dan mudah dibaca.
- **Layout**: Desain yang bersih, responsif, dan intuitif, memprioritaskan kemudahan navigasi dan interaksi.
- **Interaktivitas**: Komponen interaktif seperti tombol dan input field akan memiliki efek visual yang halus untuk meningkatkan pengalaman pengguna.

## Rencana Implementasi Awal

1.  **Inisialisasi Proyek & Dependensi**:
    *   Menambahkan `supabase_flutter`, `flutter_riverpod`, `riverpod_annotation`, dan `google_fonts` ke `pubspec.yaml`.
    *   Menjalankan `flutter pub get`.

2.  **Struktur Direktori**:
    *   Membuat struktur folder yang scalable: `core`, `features`, `models`, `repositories`.

3.  **Inisialisasi Supabase & Riverpod**:
    *   Menginisialisasi Supabase di `lib/main.dart`.
    *   Membungkus aplikasi dengan `ProviderScope` dari Riverpod.

4.  **Theming & UI Shell**:
    *   Mengkonfigurasi `ThemeData` untuk mode terang dan gelap.
    *   Membuat shell aplikasi dasar dengan `Scaffold` dan `AppBar`.

5.  **Fitur Autentikasi (Langkah Pertama)**:
    *   Membuat `AuthRepository` untuk mengelola logika login, logout, dan registrasi.
    *   Membuat `auth_providers.dart` untuk state management autentikasi.
    *   Membuat UI dasar untuk halaman `LoginScreen` dan `SplashScreen` untuk memeriksa status sesi pengguna.
    *   Mengimplementasikan routing dasar menggunakan `go_router` untuk navigasi antara `SplashScreen`, `LoginScreen`, dan `HomeScreen`.
