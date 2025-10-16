# Getting Started

The purpose of the project is to let you practice using TDD (Test-Driven Development, aka Test-Driven Design). 

To experience TDD, use the red-green-refactoring pattern to create “beautiful code” that fully implement the IntegerToWordedString conversion function for 32-bit numbers. This function takes an integer number and converts to a worded string (in whatever output language that you care to use for implementation though the initial test is based on English). The project source is explicitly stubbed out to a minimum implementation that only defines main program, the conversion function declaration, and two unit tests.

# Functional Specification

> ## IntegerToWordedString
>
> ### Description
>
> Converts an integer number to its equivalent worded name as string
> such as the integer number `1` being represented as the string `one`.
>
> ### Synopsis
>
>       string IntegerToWordedString(int number)
>
> ### Parameters
>
> `number` - non-negative integer value to be converted
>
> (return) - worded name equivalent of the input `number`
>
> ### Notes
>
> The implementation as provided in the same does not define any requirements
> about how language, culture, or related concerns should / could be
> addressed by the code.

# Developing using the Project

## Project Structure

### `sample/Program.js`

A simple console app interface for the conversion code. The console app takes a single integer parameter and outputs the converted worded string value on the console.

### `sample/lib/Converter.js`

The utility class that includes the `IntegerToWordedString` as a public static function.

### `sample-tests/lib/ConvertIntegerToWordedStringTests.test.js`

The complete set of unit tests for the `IntegerToWordedString` function that is the focus of this project. Note the starting set of unit tests contain one test `NotImplementedYet` that may be obsoleted if you implement the complete functionality or the conversionspecification.

## Building and Testing

While the system can be developed and tested across various IDEs, this project was specifically configured and verified using VSCode. For JavaScript and specifically for Jest testing, here’s how you would set up and execute the tests.

### Setting up Jest

Install Node.js: Ensure Node.js is installed on your machine. If it's not installed, you can download and install it from nodejs.org.

**Initialize a Node.js Project:** In your project directory (/javascript), initialize a Node.js project if you haven’t already:

```bash
npm init -y
```

**Install Jest:** Install Jest using npm by running the following command in your project directory:

```bash
npm install --save-dev jest
```

**Configure Jest:** Modify your package.json to include a test script:

```json
"scripts": {
    "test": "jest"
}
```

### Running Tests:

With Jest installed and configured, you can run your tests directly from the VSCode terminal:

**Open Terminal:** Open the VSCode terminal by selecting Terminal from the top menu and then New Terminal.

**Navigate to Test Directory:** Change to the directory containing your tests if your tests are not in the root directory. For example:

```bash
cd sample-tests
```

**Run Jest:** Execute the test script by running:

```bash
npm test
```

or if you're using yarn:

```bash
yarn test
```

The first execution should result in final "red" state test status like:

## <span style="color:red; font-family:monospace; font-weight: bold; white-space: pre-wrap;">

Ran 2 tests in 0.000s
FAILED (errors=1)

</span>

## Using TDD to Implement the Feature

Follow the instructions in [IMPLEMENTATION.md](../IMPLEMENTATION.md).