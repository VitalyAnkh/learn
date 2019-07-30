import java.util.Scanner;

public class CalculateBMI {
    public static void main(String args[]) {
        java.util.Scanner stdin = new Scanner(System.in);
        System.out.println("请输入身高(单位为m)");
        double height = stdin.nextDouble();
        System.out.println("请输入体重(单位为kg)");
        double weight = stdin.nextDouble();
        double bmi = weight / (height * height);
        if (bmi < 18.5) {
            System.out.println("过低！");
        } else if (bmi >= 18.5 && bmi < 25) {
            System.out.println("正常");
        } else if (bmi >= 25 && bmi < 28) {
            System.out.println("过重！");
        } else if (bmi >= 28 && bmi < 32) {
            System.out.println("肥胖！");
        } else {
            System.out.println("非常肥胖！");
        }

        int number_of_people = 10;
        switch (number_of_people) {
        case 1:
            System.out.println("Too few!");
            break;
        case 2:
            System.out.println("Not bad");
            break;
        default:
            System.out.println("No matter how many");

        }
    }
}