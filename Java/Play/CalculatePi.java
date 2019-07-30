// use pi/4 = 1- 1/3 + 1/5 - 1/7 + 1/9 - ...
public class CalculatePi {
    public static void main(String[] args) {
        double pi = 0;
        for (int i = 1; i <= 10000; i++) {
            if (i % 2 != 0) {
                pi += 1.0 / (2.0 * (double) i - 1.0);
            } else {
                pi -= 1.0 / (2.0 * (double) i - 1.0);
            }

        }
        System.out.println(pi * 4);
    }
}