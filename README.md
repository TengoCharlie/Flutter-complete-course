# Dart

## variable

Dart is a statically typed programming language so if we declare a variable in it we cant change it type in future means no type casting allowed.

- int

  ```dart
  void main() {
  int age = 30;
  print(age);
  }
  ```

- double

  ```dart
  void main() {
  double age = 30.0099;
  print(age);
  }
  ```

- String

  ```dart
  void main() {
   String name = 'Charles';
  print(name);
  }
  ```

- bool

  ```dart
  void main() {
    bool isLetter = true;
    print(isLetter);
  }
  ```

- var

  ```dart
  void main() {
  var name = 'Charles';
  print(name);

  var age = 30;
  print(age);

  }
  ```

- dynamic

  ```dart
  void main() {
   dynamic name = 'Charles';
  print(name);
  name = 30;
  print(name);
  }

  ```

- final

  ```dart
    void main() {
   final val1 = 12;
   print(val1);
  // with final datatype we cant chage the value of variable in future it is implicitly constant or const
  }
  ```

- const

  ```dart
   void main() {
  final val1 = 12;
  print(val1);
  // with const datatype we cant chage the value of variable in future
  }
  ```

## Function

```dart
  void main() {
  print('something');

  String greet = greeting('Charles');

  print(greet);

  int age = getAge();

  print(age);
}

String greeting(name){
  return "Hello ${name}";
}

int getAge(){
  return 30;
}

```

output:

```
  something
  Hello Charles
  30
```

## Arrow Function

```dart
   void main() {
 print('something');

 String greet = greeting('Charles');

 print(greet);

 int age = getAge();

 print(age);
}

// Arrow function

String greeting(name) => "Hello ${name}";


int getAge() => 30;
```

output:

```
  something
  Hello Charles
  30
```

## List

List in Dart is similar to Array in other programming languages.

```dart
void main() {
List fruits = ['mango', 'apple', 'banana'];
print(fruits);

fruits.add('papaya');
fruits.remove('apple');
fruits.add(30);

print(fruits);


 List<String> vege = ['Brinjal', 'potato', 'spinich'];
print(vege);

vege.add('brocalli');
vege.remove('potato');

print(vege);
}


```

```
[mango, apple, banana]
[mango, banana, papaya, 30]
[Brinjal, potato, spinich]
[Brinjal, spinich, brocalli]
```

## Classes

```dart
void main() {
  User user = User();
  print(user.userName);
  print(user.age);
  user.login();

  User user2 = User();
  print(user2.userName);
  print(user2.age);
  user2.login();
}

class User{
 String userName = 'Luigi';
 int age = 20;

 void login() {
   print('Logged In Successfully');
 }
}
```

```
Luigi
20
Logged In Successfully
Luigi
20
Logged In Successfully
```

## classes using constructor to change the static data to dynamic

```dart
void main() {
  User user = User('Luigi', 20);
  print(user.userName);
  print(user.age);

  User user2 = User('Mario', 25);
  print(user2.userName);
  print(user2.age);
}

class User{
  String userName;
  int age;

  User(String USERNAME, int AGE){
    this.userName = USERNAME;
    this.age = AGE;
  }

  void login() {
    print('Logged In Successfully');
  }
}

```

```
Luigi
20
Mario
25
```

## class inheritance

When we use one class in another class, it means it inherit or use all the behavior of parent class and also add new behaviors to the class.

```dart
  void main() {
 User user = User('Luigi', 20);
  print(user.userName);
  print(user.age);
  user.login();

  User user2 = User('Mario', 25);
  print(user2.userName);
  print(user2.age);

  SuperUser user3 = SuperUser('Lia', 18);
  print(user3.userName);
  print(user3.age);
  user3.login();
  user3.SignUp();

//   user and user2 don't have access to SignUp() but SuperUser have access to login()
}

class User{
  String userName;
  int age;

  User(String USERNAME, int AGE){
    this.userName = USERNAME;
    this.age = AGE;
  }

  void login() {
    print('Logged In Successfully');
  }
}

class SuperUser extends User{
  SuperUser(String USERNAME, int AGE) : super(USERNAME, AGE);

  void SignUp(){
    print('Sign Up Successfully');
  }
}
```

```
Luigi
20
Logged In Successfully
Mario
25
Lia
18
Logged In Successfully
Sign Up Successfully
```
