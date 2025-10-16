# Basic Syntax and Usage of Doctest for TDD in C++

> This tutorial focuses on explaining the syntax and essential constructs of Doctest, a C++ testing framework. We'll cover the crucial elements needed to start writing test cases using Doctest for Test-Driven Development (TDD).

## Understanding Doctest

Doctest is lightweight and easy to integrate into your C++ projects. It enables you to define tests alongside your code, facilitating fast compile times and efficient test execution.

### Key Components

1. **Including Doctest:**
   To use Doctest, you must include its header in your test files. Assuming Doctest has been added to your project, include it like this:

   ```cpp
   #define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
   #include "doctest.h"
   ```

2. **Test Cases:**
   Test cases are defined using the `TEST_CASE` macro. Here, you describe what the test is checking.

   ```cpp
   TEST_CASE("Description of the test case")
   ```

3. **Assertions:**
   Assertions are used within the `TEST_CASE` macro to validate the correctness of the code. The simplest assertion in Doctest is `CHECK`, which evaluates a boolean expression. All the other doctest assertions can be found on the [doctest github](https://github.com/doctest/doctest/blob/master/doc/markdown/assertions.md).

   ```cpp
   CHECK(expression);
   ```

   If `expression` evaluates to false, the test fails.

### Example: Single File Test Case

Consider testing a function that calculates Fibonacci numbers. Start by creating a file named `example_tests.cpp`.

1. **Starting Structure:**

   ```cpp
   #define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
   #include "doctest.h"

   int fib(int n) {
      if (n <= 1)
         return n;
      return fib(n-1) + fib(n-2);
   }
   ```

   The line `#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN` tells the framework to provide a `main()` function automatically, which is essential for executing standalone test files.

2. **Add a Test Case:**

   ```cpp
   int main(){
      TEST_CASE("Testing Fibonacci number calculation") {
         CHECK(fib(0) == 0);
         CHECK(fib(1) == 1);
         CHECK(fib(5) == 5);
      }
   }
   ```

### Compilation and Execution

Compile this test file using a C++ compiler command:

```bash
g++ -o example_tests example_tests.cpp
```

Then, run the compiled executable:

```bash
./example_tests
```

### Breakdown of the Test Case

- **Test Case Name:** `"Testing Fibonacci number calculation"` provides a clear description of what this test case verifies.
- **Assertions:** Each `CHECK` inside the `TEST_CASE` is an assertion testing specific scenarios:
  - `CHECK(fib(0) == 0)`: Tests if the Fibonacci function correctly calculates the Fibonacci number for 0.
  - Other `CHECK` assertions test additional scenarios accordingly.

### Conclusion

This guide covered the basic syntax for starting with Doctest in C++. By understanding how to structure a test case and employ assertions, you can begin writing tests in a TDD manner. The simplicity of Doctest allows for minimal overhead, making it suitable for projects of any size. This method ensures focus on functionality and correctness from early development stages, reinforcing best coding practices and leading to robust software.

If you need additional information, you can refer to the sources below:

- Introductory article on Doctest by JetBrains: https://blog.jetbrains.com/rscpp/2019/07/10/better-ways-testing-with-doctest/
- The Official Tutorial on Doctest by Doctest: https://github.com/doctest/doctest/blob/master/doc/markdown/tutorial.md
