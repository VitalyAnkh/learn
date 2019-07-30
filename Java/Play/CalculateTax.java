public class CalculateTax {
    public static void main(String args[]) {
        Income[] incomes = new Income[] { new Income(3242), new Salary(3234), new StateCouncilSpecialAllowance(1000), };
        double sumOfTax = 0;
        for (Income income : incomes) {
            sumOfTax += income.getTax();

        }
        System.out.println(sumOfTax);
    }
}

class Income {
    protected double income;

    public Income(double income) {
        this.income = income;
    }

    protected double getTax() {
        return this.income * 0.1;
    }
}

class Salary extends Income {
    public Salary(double salary) {
        super(salary);
    }

    @Override
    protected double getTax() {
        if (this.income < 5000) {
            return 0;
        } else {
            return this.income * 0.2;
        }
    }
}

class StateCouncilSpecialAllowance extends Income {
    public StateCouncilSpecialAllowance(double allowance) {
        super(allowance);
    }

    @Override
    protected double getTax() {
        return 0;
    }
}