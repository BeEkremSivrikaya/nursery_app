class Student {
  int id = 0, inputs = 0, outputs = 0;
  String firstName = "name", lastName = "surname", status = "statu"
      // ,      selectedStudent = ""
      ;
  bool statu = false;

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

  String get getStatus {
    String isInput = "";
    if (this.inputs != 0) {
      isInput = "okulda";
    } else {
      isInput = "okulda değil";
    }
    this.status = isInput;
    return this.status;
  }
}
