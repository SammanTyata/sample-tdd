# Using TDD to Implement the Feature

This document is intended to guide you through the use of Test-Driven Development (TDD) to implement a specific feature in your project while adhering to the <a href="https://martinfowler.com/bliki/Yagni.html">YAGNI</a> (You Ain't Going to Need It) principles as outlined by Martin Fowler. YAGNI emphasizes the practice of not adding functionality until it is necessary, essentially meaning you should only implement something when there is a test that requires it. This approach avoids over-engineering and keeps the design simple and focused on what is needed at present.

## Focus on creating simple, well-organized, readable code

The goal of TDD is to produce code that is professional quality. In particular, the code MUST:

1. Correctly implement the desired functionality.

    Add automated unit tests to help ensure this goal. 

1. Be easy for others to read and understand. 

    Refactor the code to be "beautiful" production-quality code to help ensure this goal. See Robert Martin's excellent book [*Clean code: a handbook of agile software craftsmanship*](https://learning.oreilly.com/library/view/clean-code-a/9780136083238/). 

    Write code that is as simple as reasonable, and is highly readable. That code will be easier to change.
    
    Write code that you would be proud to show to a peer. 

While your code MUST meet both goals, put more attention on the second goal as maintainability is critical for professional code and most students do not have much practice with producing simple, well-organized, readable code.



## Read all of this document

Before writing any unit tests or code, read everything in this document, includeing the content linked to by the hyperlinks.

## Set up for TDD

Our project is structured to facilitate iterative development using the red-green-refactor cycle of TDD. Initially, our code and tests are stubbed out to throw a Not Implemented exception, indicating functionality that exists solely in a "red" state, awaiting implementation.

## Prepare your workspace

Before you start implementing your feature, create a new branch in Git. This isolates your development work from the main codebase, allowing for easy version control and review processes. You can create a new branch via the following Git command:

```
git checkout -b your-branch-name
```

## Read the framework documentation

To get familiar with the unit testing framework used in this project, `doctest`, refer to the `FRAMEWORK.md` file which is located in the same folder as this `README.md`. This document provides comprehensive guidelines and is available on your GitHub repository as well.

## Implement the feature using TDD

### Start with the first test

Implement the `IntegerToWordedString` function which converts integers into their respective textual representations. Begin with the first unit test, which should be designed to fail initially (red state), testing the simplest case (e.g., transforming 1 to One). Remember the advice from home-of-tdd on how to [generate the first test case!](https://github.com/zukixa/home-of-tdd?tab=readme-ov-file#how-to-construct-a-proper-test-case)

### Progress through the Red-Green-Refactor Cycle

> **Plan:** Decise on the next **tiny** change in functionality to work on.

> **Red:** Write a unit test to check that new functionality. Make sure that the text fails, since the associated functionality is not yet implemented.

> **Green:** Implement the necessary functionality to pass the failing unit test.

> **Commit your changes to Git:** Once the test passes, commit your changes to the current branch.

> **Yellow:** Refactor stage. Is the code "beautiful"? Could the design and readability be improved? Apply development principles like DRY (Don't Repeat Yourself) and SOLID. Ensure any refactoring does not break existing tests.

> **Commit your changes to Git:** If you have refactored the code, commit your changes to the current branch.

It might be tempting to stray from this [red-green-refactor process](https://docs.google.com/document/d/1Uxb2fVq267BSKKTXfm6147A4C6zFFDlfIKALhYliaSc/edit#heading=h.m5ejmz99l1yx), but consistency is crucial for learning! And this process works! 

Focus on adding just enough useful test cases so that you are confident that the code works appropriately. Use [equivalence partitioning and boundary testing](https://docs.google.com/document/d/16ESV-HJAJi5HvYEkTLNpJCUNP5w9-axnhDSB2uQB3Ts/edit#heading=h.xvkwlfwhzc77), select a representative value from that group for testing, write the corresponding test, and then refine the code as necessary! 

### Iteratively add more tests

After your first "yellow" state, add **one** new unit test similar to the existing unit test `FirstPositiveIntegerIsOne` that will test a different input and expected result. Make sure that all tests pass **except** this one new test -- putting the code into the "red" state. Write code to implement the functionality verified in the unit test until the test passes again ("green" state), then commit the changes to git. Refactor if the code is at all messy, and commit the changes to git. Continue this loop for as long as you need for fully implementing the specifications.

### Continuously integrate your code

**Pull Requests and Merging:**
If you are working on a production codebaser, after completing a cycle of implementations consider merging your branch back into the main branch through a pull request. This practice endorses Continuous Integration, continuously merging small pieces of change into the main branch, which helps catch integration bugs early and improves cohesion in collaborative environments. 

**Repeat:**
Continue with the red-green-refactor cycle until the feature is fully implemented based on the comprehensive specifications dictated by your tests.

By adhering to this structured approach, you enable a methodical implementation that adheres closely to specified requirements while maintaining high standards of code quality and coherence.
