public class Max {
  /** Returns the maximum value from m. */
  public static int max(int[] m) {
    int result = m[0];
    for (int i = 0; i < m.length; i++) {
      if (result < m[i]) {
        result = m[i];
      }
    }
    return result;
  }
  public static void main(String[] args) {
    int[] numbers = new int[] {9, 2, 15, 2, 22, 10, 6};
    System.out.println(max(numbers));
  }
}
