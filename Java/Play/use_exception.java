import java.util.Arrays;
import java.io.UnsupportedEncodingException;
public class use_exception {
    public static void main(String[] args) {
        byte[] bs = toGBK("李岐");
        System.out.println(Arrays.toString(bs));
    }

    static byte[] toGBK(String s) {
        try {
            return s.getBytes("GBK");
        } catch (UnsupportedEncodingException e){
            System.out.println(e);
            return s.getBytes();
        }
    }
}