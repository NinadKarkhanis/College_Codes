// Creating parent class
class person {
  // Creating a function
  void displayperson() {
    print("HI I AM A PERSON");
  }
}

// Creating Child1 class
class employee extends person {
  String companyname = "";

  // Creating a function
  void displayemployee() {
    print("HI I AM AN EMPLOYEE WORKING AT ${companyname}");
  }
}

// Creating Child2 class
class manager extends employee {
  // Creating a function
  void displaymanager() {
    print("HI I AM A MANAGER WORKING AT ${companyname}");
  }
}

class businessman extends person {
  String businesstype = "";
  // Creating a function

  void displaybusinessman() {
    print("HI I AM A BUSINESSMAN DOING BUSINESS OF ${businesstype}");
  }
}

void main() {
  manager m = manager();
  m.displayperson();
  m.companyname = "TCS";
  m.displayemployee();
  m.displaymanager();

  businessman b = businessman();
  b.displayperson();
  b.businesstype = "POWER TOOLS";
  b.displaybusinessman();
}
