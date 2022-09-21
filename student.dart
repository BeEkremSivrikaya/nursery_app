class Student {
  int id = 0, inputs = 0, outputs = 0;
  String firstName = "name", lastName = "surname", status = "statu";

  Student(String firstName, String lastName, int inputs, int outputs) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.inputs = inputs;
    this.outputs = outputs;
  }

  //named constructor = c# overloading.
  Student.withId(
      int id, String firstName, String lastName, int inputs, int outputs) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.inputs = inputs;
    this.outputs = outputs;
  }
}
