import java.util.Scanner;
public class Main{
    public static void main(String[] args) {
        int n;
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the number of customers");
        n = sc.nextInt();
        customer[] obj = new customer[n];
        SBI[] obj1 = new SBI[n];
        City[] obj2 = new City[n];
        canara[] obj3 = new canara[n];
        for(int i=0;i<n;i++){
            obj[i]=new customer();
            obj[i].read();           
            obj[i].display();

            obj1[i]=new SBI();
            obj1[i].sbical(obj[i].balance);
            
            obj2[i]=new City();
            obj2[i].citycal(obj[i].balance);
            
            obj3[i]=new canara();
            obj3[i].canaracal(obj[i].balance);
        }

    }
}
class customer{
    String name;
    int account_no;
    float balance;

    public void read(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter name: ");
        name = sc.nextLine();
        System.out.println("Enter account_no: ");
        account_no = sc.nextInt();
        System.out.println("Enter balance: ");
        balance = sc.nextFloat();
        sc.nextLine();
    }
    public void display(){
        System.out.println("name= "+name);
        System.out.println("account_no= "+account_no);
        System.out.println("balance= "+balance);
    }
}

class SBI extends customer{
    public void sbical(float bal){
        System.out.println("The Interest Sbi bank is providing for your balance is 7.5");
        System.out.println("The total balance is :"+ bal);
        System.out.println("The interest amount for the balance is"+bal*.075);
        System.out.println("the total balance with the interest for 1 year is "+bal*1.075);
    }
 
}
class City extends customer{
        public void citycal(float bal){
        System.out.println("The Interest City bank is providing for your balance is 7");
        System.out.println("The total balance is :"+ bal);
        System.out.println("The interest amount for the balance is"+bal*.07);
        System.out.println("the total balance with the interest for 1 year is "+bal*1.07); 
        }
}
class canara extends customer{
        public void canaracal(float bal){
        System.out.println("The Interest Canara bank is providing for your balance is 8");
        System.out.println("The total balance is :"+ bal);
        System.out.println("The interest amount for the balance is"+bal*.08);
        System.out.println("the total balance with the interest for 1 year is "+bal*1.08);
        }
}
