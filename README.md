# Pets Adoption App Auth 🦄

## Instructions

- If you need a starting point, fork and clone [this repository](https://github.com/JoinCODED/Task-Flutter-Auth-AdoptApp-Signup) to your `Development` folder.

## Steps

1. Change your backend baseUrl to this:

```
https://coded-pets-api-auth.herokuapp.com
```

### Setup

1. In your `models` folder, create a new file called `user` and create a model with the following properties:

```dart
  int? id
  String username
  String? password
```

2. Add `json_serializable` package into your project:

```dart
flutter pub add json_serializable
```

3. Import `json_serializable` package into your user model:

```dart
import 'package:json_annotation/json_annotation.dart';
```

4. Add the `part` file:

```dart
part 'user.g.dart';
```

5. Before your class definition, add this:

```dart
@JsonSerializable()
class User {
[...]
```

6. At the end of your class:

```dart
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
```

7. Install the `build_runner` package:

```dart
flutter pub add build_runner
```

8. Run this command:

```dart
flutter pub run build_runner build
```

9. In your `providers` folder create a file called `auth_provider.dart`.
10. Add 2 properties for now, a `String` `token` and initialize it with an empty string, and a `User` `user` property and mark it as `late`.
14. In your `services` folder, create a new file `auth_services.dart`.
15. Create your `signup` function that returns a future String and takes `user` as an argument.
16. Send a post request to `/signup` and pass the `user` argument using `.toJson` constructor.
17. Return the token from the response object.
18. Create the `signup` function in your `auth_provider` with a type of `void` and call our `signup` function from `auth_services.dart`.
19. Assign the token coming from the response to your `token` property in the provider, and print the token in the console.

### Signup

1. In your `pages` folder, create a signup page and paste this code
```dart
class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign up"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text("Sign Up"),
            TextField(
              decoration: const InputDecoration(hintText: 'Username'),
              controller: usernameController,
            ),
            TextField(
              decoration: const InputDecoration(hintText: 'Password'),
              controller: passwordController,
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Sign Up"),
            )
          ],
        ),
      ),
    );
  }
}
```
2. Add this page into your routes in `main.dart`.
3. In your `home_page.dart` create a `Drawer` widget with a signup button.
4. In your signup button, link it to the `signup` page.
5. In `main.dart` change `ChangeNotifierProvider` with `MultiProvider` that takes `providers` array as an argument and add your two providers.
6. In your Signup page, call the signup function, and pass it the text fields values, then pop the user to the `home_page` again.
7. Check your code, you should see the token in the console.
