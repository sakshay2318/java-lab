import java.util.Scanner;
class Main{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
            int i;
            int j;
            System.out.println("enter the 2 numbers for division");
        try{
            i = sc.nextInt();
            j = sc.nextInt();
            int l = i/j;
            if(i<0 || j<0){
                throw new IllegalArgumentException("negative number");
            }
        }
        catch(IllegalArgumentException e){
            System.out.println(e.getMessage());
        }
        catch(ArithmeticException e){
            System.out.println("divide by zero error");
        }        
    }
}
