import java.util.Arrays;
public class TraverseArray {
  public static void main(String[] args) {
    int[] ns = {1, 2, 3, 6, 8};
    for (int i = 0; i < ns.length; i++) {
      System.out.println(ns[i]);
    }
    System.out.println("我是分割线");
    for (int n : ns) {
      System.out.println(n);
    }
    System.out.println(Arrays.toString(ns));
  }
}
