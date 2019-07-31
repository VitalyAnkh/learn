public class StaticField {
    public static void main(String[] args) {
        Person hong = new Person("Xiao Hong", 12, 43143);
        Person ming = new Person("Xiao Ming", 18, 3214);
        System.out.println(hong.static_number);
        System.out.println(ming.static_number);
        hong.static_number = 153215321;
        System.out.println(hong.static_number);
        System.out.println(ming.static_number);

    }
}

class Person {
    String name;
    int age;
    public static int static_number;

    public Person(String name, int age, int number) {
        this.name = name;
        this.age = age;
        this.static_number = number;
    }

    public int getAge() {
        return age;
    }
}