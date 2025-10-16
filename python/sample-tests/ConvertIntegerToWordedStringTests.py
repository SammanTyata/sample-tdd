import unittest
import sys

sys.path.append("../")  # pythonian import uniqueness
from sample.lib.Converter import IntegerToWordedString


class ConvertIntegerToWordedStringTests(unittest.TestCase):

    # TODO: This test will become obsolete once the IntegerToWordedString
    # function is fully implemented as per the specifications.
    def test_not_implemented_yet(self):
        with self.assertRaises(NotImplementedError):
            IntegerToWordedString(-1000000)

    # TODO: Initial "red" test to code logic
    def test_first_positive_integer(self):
        number = 1
        words = IntegerToWordedString(number)
        self.assertEqual(words.lower(), "one")


if __name__ == "__main__":
    unittest.main()
