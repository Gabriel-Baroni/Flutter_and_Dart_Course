
//Simple function
void greet(String name) {
  print('Hello, $name!');
}

//Simple Class
class Person {
    //Attributes
    String name;
    int age;

    //Constructor
    Person(this.name, this.age);

    //Method
    void displayInfo() {
        print('Name: $name, Age: $age');
  }

}


void main() {
//Initialize variables
    int age = 25;
    double height = 5.9;
    String name = "John Doe";
    bool isStudent = true;

    print('Name: $name');
    print('Age: $age');
    print('Height: $height');
    print('Is a Student: $isStudent');

    //Data types
    List<String> fruits = ['Apple', 'Banana', 'Cherry'];
    Map<String, int> scores = {'Alice': 90, 'Bob': 85, 'Charlie': 95};
    String? nullableString = null;

    print('Fruits: $fruits');
    print('Score of Alice: ${scores['Alice']}');
    print('Nullable String: $nullableString');

//Inference a type
    var city = 'New York';  // Type inferred as String
    String country = 'USA';  // Type annotation
    print('City: $city');
    print('Country: $country');

//Const and final variables
    const double pi = 3.14;
    final DateTime currentTime = DateTime.now();
    print('Pi: $pi');
    print('Current Time: $currentTime');

///Calls the function
    greet('Alice');

//instance an object
    Person person = Person('Bob', 30);
//Use a Method of the object Person
    person.displayInfo();
}
