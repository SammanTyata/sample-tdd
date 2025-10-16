# Basic Syntax and Usage of unittest for TDD in Python

This tutorial will introduce you to the basic syntax and constructs needed to start writing unit tests with Python's `unittest` module, which is commonly used for Test-Driven Development (TDD). We'll guide you through setting up a basic unit test scenario using `unittest`, making this tutorial ideal for beginners looking to incorporate unit testing into their Python projects.

## Understanding unittest

Python's `unittest` module, inspired by Java’s JUnit, provides a way to create and run tests within the Python environment. It is part of the Python standard library and supports test automation, sharing of setup and shutdown code for tests, aggregation of tests into collections, and independence of the tests from the reporting framework.

### Key Components

1. **Test Case Structure:**
   In `unittest`, test cases are defined by subclassing `unittest.TestCase`. Each test method within this class starts with the prefix `test`.

```py
import unittest

class TestFibonacci(unittest.TestCase):
    def test_fibonacci(self):
        self.assertEqual(fibonacci(5), 5, "Should be 5")
```

2. **Assertions:**
   `unittest` includes several assertion methods for validating test outcomes, such as `assertEqual()`, `assertTrue()`, and `assertFalse()`.

```py
self.assertEqual(result, expected)
```

This method verifies that the obtained result matches the expected result, crucial for validating test scenarios.

### Example: Testing a Fibonacci Sequence Function

Next, let's construct a test for a function that calculates Fibonacci numbers.

1. **Implementing the Function:**

   Develop a simple function outside the test class to compute Fibonacci numbers:

```py
def fibonacci(n):
    if n < 2:
        return n
    else:
        return fibonacci(n-1) + fibonacci(n-2)
```

2. **Writing Tests:**

   Implement a unit test to validate that the `fibonacci` function generates the correct Fibonacci numbers:

```py
class TestFibonacci(unittest.TestCase):
    def test_fibonacci(self):
        result = fibonacci(5)
        self.assertEqual(result, 5)

if __name__ == "__main__":
    unittest.main()
```

### Running Tests

To execute the tests, assuming your script is saved as `test_fibonacci.py`, use the following command in the terminal:

```py
python3 test_fibonacci.py
```

### Breakdown of the Test Case

- **Test Method:** `test_fibonacci()` invokes the `fibonacci` function with an input of 5 and verifies the outcome using `self.assertEqual()`, ensuring the function accurately computes the fifth Fibonacci number.

### Conclusion

Through this tutorial, we reviewed how to use Python's `unittest` framework. We covered the creation of a test case, assertions, and a simple practical example. `unittest`'s built-in features support robust test construction and can help improve the reliability of software by catching issues early in the development cycle.

For further in-depth information, you can refer to the following resources:

- Python's `unittest` documentation: https://docs.python.org/3/library/unittest.html
- Real Python's guide on `unittest`: https://realpython.com/python-testing/
