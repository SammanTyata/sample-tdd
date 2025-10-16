const Converter = require('../sample/lib/Converter');

describe('Converter Functionality', () => {
    // TODO: This test will become obsolete once the IntegerToWordedString
    // function is fully implemented as per the specifications.
    test('Converter Function is not implemented', () => {
        expect(() => Converter.integerToWordedString(Number.MIN_SAFE_INTEGER)).toThrow(Error);
    });

    // TODO: Initial "red" test to code logic
    test('First positive integer is converted', () => {
        expect(Converter.integerToWordedString(1)).toBe("one");
    });
});

afterAll(() => {
    console.log('All tests have completed.');
});