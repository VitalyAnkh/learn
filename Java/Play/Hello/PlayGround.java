public class PlayGround {
    public static void main(String args[]) {
        int n = 70;
        if (n >= 60) {
            System.out.println("及格了");
        }
        System.out.println("End!");
        double x = 1 - 9.0 / 10;
        if (Math.abs(x - 0.1) < 0.00001) {
            System.out.println("x is 0.1");
        }

        String s2 = "DSaf".toLowerCase();
        String s1 = null;
        System.out.println(s1);
        System.out.println(s2);
        System.out.println(s1 == s2);
        System.out.println(s2.equals(s1));
    }
}