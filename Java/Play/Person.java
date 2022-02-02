public class Person {
    protected String name;
    protected int age;
    protected double money;

    public Person(String name, int age, double money) {
        this.name = name;
        this.age = age;
        this.money = money;
    }

    final void hello() {
        System.out.println("Hello!");
    }

    String getString() {
        return this.name;
    }

    void setName(String name) {
        this.name = name;
    }

    int getAge() {
        return this.age;
    }

    void setAge(int age) {
        this.age = age;
    }

    double getMoney() {
        return this.money;
    }

    void setMoney(double money) {
        this.money = money;
    }

    public static void main(String args[]) {
        Person bob = new Student("Bob", 18, 1000.0, 10);
        Person alice = bob;
        Person vitalyr = new Person("VitalyR", 21, 10);
        vitalyr.run();
        bob.run();
        alice.run();
    }

    public void run() {
        System.out.println("I'm a person, I'm running!");
    }
}

class Student extends Person {
    int grade;

    public Student(String name, int age, double money, int grade) {
        super(name, age, money);
        this.grade = grade;
    }

    @Override
    public void run() {
        System.out.println("I'm a student, I can't run!呜呜呜");
    }
}