
class InvalidAgeException extends Exception {
    public InvalidAgeException(String message) {
        super(message);
    }
}

public class CustomException {
    public static void main(String[] args) {
        try {
            int age = 16;
            if (age < 18) {
                throw new InvalidAgeException("Age must be at least 18.");
            } else {
                System.out.println("Valid age");
            }
        } catch (InvalidAgeException e) {
            System.out.println("Exception: " + e.getMessage());
        }
    }
}
