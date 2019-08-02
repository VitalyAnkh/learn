public class PractiseString {
    public static void main(String[] args) {
        String s = new String(new char[] { 'H', 'e', 'l', 'l', 'o' });
        System.out.println(s);
        String s1 = "Hello";
        System.out.println(s == s1);
        System.out.println(s.equals(s1));
        s = s.toLowerCase();
        System.out.println(s);
        StringBuilder sb = new StringBuilder(1024);
        for (int i = 0; i < 1000; i++) {
            sb.append(',');
            sb.append(i);
        }
        sb.append("Mr. ").append("White").insert(0, "Hello, ");
        String s2 = sb.toString();
        System.out.println(s2);
    }
}