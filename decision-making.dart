// //If Statement
// // if statement outputs depending on a certain conditional expression
// void main() {
//   var age = 30;
//   if (age > 18) {
//     print("Mariam is a voter in Kenya");
//   }
//   //print("Mariam is still young to vote");
// }

// void main() {
//   var age = 20;
//   if (age > 18) {
//     print("Mariam is a voter in Kenya");
//   } 
//   else {
//     print("Mariam is still young to vote");
//   }
// }

void main() {
  var age = 18;
  if (age > 18) {
    print("Mariam is a voter in Kenya");
  } else if (age == 18) {
    print("Mariam just became eligible to vote in Kenya");
  } else {
    print("Mariam is still young to vote");
  }
}

/*
If age is greater than 18, the statement "Mariam is a voter in Kenya" will be printed.
If age is exactly 18, the statement "Mariam just became eligible to vote in Kenya" will be printed.
If neither of the above conditions is met, the statement "Mariam is still young to vote" will be printed.
*/ 
