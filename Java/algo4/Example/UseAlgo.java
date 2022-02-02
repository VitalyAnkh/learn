package Example;

import edu.princeton.cs.algs4.MinPQ;
import edu.princeton.cs.algs4.StdIn;
import edu.princeton.cs.algs4.StdRandom;
import edu.princeton.cs.algs4.StdOut;

public class UseAlgo {
    public static void main(String[] args) {
        System.out.println(Math.max(1, 2));
        System.out.println(Integer.parseInt("123"));
        StdOut.print("fdsa");
        StdOut.println();
        StdOut.printf("%10d\n", 100);
        StdOut.printf("Pi is approximately %.4f\n", Math.PI);
        double sum=0.0;
        int count=0;
        while (!StdIn.isEmpty()) {
            sum+=StdIn.readDouble();
            count++;
        }
        double avg=sum/count;
        StdOut.printf("Average is %.2f\n", avg);
    }
}