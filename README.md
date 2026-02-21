# Smart Agri Connect

Smart Agri Connect is a Flutter mobile app that connects **farmers** and **buyers** with role-based login, crop browsing, product details, and marketplace-style flows.

## Features

- Splash/start screen with navigation to login and signup.
- Role toggle in login (`Farmer` / `Buyer`).
- OTP-based login flow.
- Crop listing and product detail screens.
- Buyer-side pages for home, basket, orders, and profile.
- Farmer-side pages for selling, crop management, and profile.

## Tech Stack

- Flutter (Dart)
- Material UI widgets
- `google_fonts`
- `device_preview` (used on web in `main.dart`)

## Project Structure

Main source code is in `lib/`.

- `main.dart` – App entry point and orientation setup.
- `start_page.dart` – Splash/start screen.
- `login_page.dart`, `otp_page.dart`, `buyer_otp_page.dart` – Authentication flow.
- `registration.dart` – User signup.
- `buyer_home.dart`, `buyer_nav_bar.dart`, `my_basket.dart`, `order_details.dart` – Buyer journey.
- `sell.dart`, `my_crops.dart` – Farmer journey.
- `*_lst.dart`, `Procuct_details.dart`, `product_details2.dart`, `product_details3.dart` – Crop/product screens.

## Prerequisites

Before running the app, make sure you have:

- Flutter SDK installed (stable channel)
- Dart SDK (bundled with Flutter)
- Android Studio or VS Code with Flutter extension
- A running Android emulator, iOS simulator, or physical device

Check installation:

```bash
flutter --version
flutter doctor
```

## Run Locally

1. Clone the repository.
2. Open the project root.
3. Install dependencies:

```bash
flutter pub get
```

4. Run the app:

```bash
flutter run
```

## Build

Android APK:

```bash
flutter build apk
```

Web build:

```bash
flutter build web
```

## Assets

Assets are configured in `pubspec.yaml`:

```yaml
flutter:
	assets:
		- assets/
```

Ensure required images (for example `assets/farm_.jpg`) exist in the `assets/` folder.

## Notes

- The app currently uses generated/local OTP behavior for login flow.
- `device_preview` is enabled when running on web (`kIsWeb`).

## License

This project is currently private/internal (`publish_to: 'none'`). Add a license section here if you plan to open-source it.
