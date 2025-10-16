import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import lib.Converter;

public class ConvertIntegerToWordedStringTests {

    @Test
    // TODO: This test will become obsolete once the IntegerToWordedString function
    // is fully implemented as per the specifications.
    void notImplementedYet() {
        assertThrows(UnsupportedOperationException.class, () -> {
            Converter.integerToWordedString(Integer.MIN_VALUE);
        });
    }

    @Test
    // TODO: Initial "red" test to code logic
    void firstPostiveInteger() {
        int number = 1;
        String words = Converter.integerToWordedString(number);
        assertEquals("one", words);
    }
}