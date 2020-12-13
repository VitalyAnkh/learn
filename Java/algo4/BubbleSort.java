import java.util.Arrays;

public class BubbleSort {
  public static void main(String[] args) {
    int[] ns = {1, 3, 5, 68, 2, 35, 7};

    for (int i = 0; i < ns.length - 1; i++) {
      for (int j = 0; j < ns.length - i - 1; j++) {
        if (ns[j] > ns[j + 1]) {
          int tmp = ns[j];
          ns[j] = ns[j + 1];
          ns[j + 1] = tmp;
        }
      }
    }
    System.out.println(Arrays.toString(ns));
    System.out.println(2.0 - 1.1);
    System.out.println('\u03c0');
  }
}
