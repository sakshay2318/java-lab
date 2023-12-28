import java.util.Scanner;
public class Main{
    public static void main(String[] args){
        student[] obj1 = new student[2];
        for(int i=0;i<obj1.length;i++){
            obj1[i]=new student();
            obj1[i].read1();           
            obj1[i].display1();
        }
        employee[] obj2 = new employee[3];
        float maxsalary= 0;
        int index=-1;
        for(int i=0;i<obj2.length;i++){
            obj2[i]=new employee();
            obj2[i].read2();           
            obj2[i].display2();
            if((obj2[i].designation.compareTo("manager")==0)&&(obj2[i].department.compareTo("sales")==0)){
                if(maxsalary<obj2[i].salary){
                    maxsalary=obj2[i].salary;
                    index=i;
                }
            }
        }
        System.out.println("the manager who has highest salary is: ");
        obj2[index].display2();       
    }
}
class person{
    int age;
    String name;
    String gender;
    String dob;

    public void read(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter name: ");
        name = sc.nextLine();
        System.out.println("Enter age: ");
        age = sc.nextInt();
        sc.nextLine();
        System.out.println("Enter DOB: ");
        dob = sc.nextLine();
        System.out.println("Enter gender: ");
        gender = sc.nextLine();
    }
    public void display(){
        System.out.println("name= "+name);
        System.out.println("age= "+age);
        System.out.println("dob= "+dob);
        System.out.println("gender= "+gender);
    }
}
class student extends person{
    String USN;
    int sem;
    float cgpa;

    public void read1(){
        read();
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter USN: ");
        USN = sc.nextLine();
        System.out.println("Enter sem: ");
        sem = sc.nextInt();
        sc.nextLine();
        System.out.println("Enter cgpa: ");
        cgpa = sc.nextFloat();

    }
    public void display1(){
        display();
        System.out.println("USN= "+USN);
        System.out.println("sem= "+sem);
        System.out.println("cgpa= "+cgpa);
    }  
}
class employee extends person{
    String empid;
    String department;
    String designation;
    float salary;
    

    public void read2(){
        read();
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter employee id: ");
        empid = sc.nextLine();
        System.out.println("Enter department name: ");
        department = sc.nextLine();
        System.out.println("Enter designation name: ");
        designation = sc.nextLine();
        System.out.println("Enter salary: ");
        salary = sc.nextFloat();
    }
    public void display2(){
        display();
        System.out.println("Employee id= "+empid);
        System.out.println("Department name= "+department);
        System.out.println("Designation= "+designation);
        System.out.println("salary= "+salary);
    }  
}
