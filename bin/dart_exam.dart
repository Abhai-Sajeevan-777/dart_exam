

//------------section a------------


import 'dart:io';

//----2.

// void main(){
//   int a =20;
//   for(int i=1;i<=a;i++){
//      if (i % 2 == 0){
//     print("$i");
//   }
//   }

//-----6.

// void main(){

// int b=4;
// for(int i=1;i<=b;i++){
//   for(int j=1;j<=i;j++){
//     stdout.write('$i ');
//   }
//  print('');
//  }
// }

//-----1.


// void main(){
// Map mapname={"Name":"john","age":30,"isstudent":false};
// print(mapname);
// }

// dynamic findlargest(<12,45,7,89,23>){
//   int largest =
//   return largest;
 //}

//------4.

//  void main(){
//   stdout.write("enter a number : ");
//   num value =int.parse(stdin.readLineSync()!);
//   // int input=0;
//   if(value % 3==0 ){
//     print("Fizz");
//   }else if(value %5 == 0){
//     print("Buzz");
//   }else if(value %3 ==0 && value %5==0){
//     print("FizzBuzz");
//   }else{
//     print("enter a valid the number");
//   }
//  }

//------3.

// void main(){
//     int sum =0;
//     List<int> myList=[10,20,30,40,50];

//     for(int i=0;i<myList.length;i+2){
//         sum += myList[i];
        
//     }
//     print(sum);
// }

//-----5.


// section B

//--------3. 


 void main(){
List<Map> books=[];
  print("WELCOME TO THE LIBRARY MANAGEMENT SYSTEM\n");
for(;;){
print("enter your choice\n");
print("""1. Add book 
2. Edit book
3. Delete book
4. Get all book\n""");

stdout.write("Enter your choice : ");
int? input=int.tryParse(stdin.readLineSync()!);

if(input==1){
    Map newbook=addbook();
    books.add(newbook);
    print(books);
    print("book added succesfully");
}
if(input==4){
    getallbook(books);
}
if(input==2){
    Map editnew=
    editbook(books);
}
if(input==3){
    deletebook();
}

stdout.write("do you want to continue(yes/no) : ");
String userinput=stdin.readLineSync()!;

if(userinput.toLowerCase()=="no"){
  break;
}
}
print("\nThank you for using the library management system.Goodbye!");
}

Map addbook(){
  stdout.write("Enter book name : ");
  String bookname =stdin.readLineSync()!;
  stdout.write("Enter author name : ");
  String authorname =stdin.readLineSync()!;
  stdout.write("enter published year : ");
  String year = stdin.readLineSync()!;
  Map newbook={"name": bookname,"author":authorname,"year":year};
  return newbook;
}

editbook(List<Map>books){
    stdout.write("enter new name :");
    String bookname =stdin.readLineSync()!;
    stdout.write("new author name : ");
    String authorname =stdin.readLineSync()!;
    Map editedbook ={"name":bookname,"author":authorname};
    return editedbook;

}

deletebook(){

}

getallbook(List<Map>books){
    for(int index =0;index<books.length;index++){
        print("book ${index+1}: \n name : ${books[index]["name"]},\nyear : ${books[index]["year"]}");
    }
}

// ---------1.

// void main(){
//     int a=9;
//     for(int i=1;i<=a;i++){
//         for(int j=1;j<=a;j++){
//             if(i==1 || i==9 || j==i || j==a-i+1){
//                 stdout.write("* ");
//             }else{
//                 stdout.write("  ");
//             }
//         }
//         print('  ');
//     }
// }
