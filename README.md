# Introduction to the TDD Practice Project

This project is designed as an educational resource to familiarize you with Test-Driven Design (TDD). It begins with a rudimentary project structure that merely contains the basic architecture: a main program, a function declaration for conversion processes, and a couple of preliminary unit tests. These elements establish a foundational framework that encourages learning and applying TDD principles hands-on.

The repository organizational structure is delineated by programming languages. The languages available are [**C#**](https://github.com/css-software-engineering-studio/sample-tdd/tree/main/csharp), [**Java**](https://github.com/css-software-engineering-studio/sample-tdd/tree/main/java), [**C++**](https://github.com/css-software-engineering-studio/sample-tdd/tree/main/cplusplus), [**Python**](https://github.com/css-software-engineering-studio/sample-tdd/tree/main/python), [**Dart**](https://github.com/css-software-engineering-studio/sample-tdd/tree/main/dart), and [**JavaScript**](https://github.com/css-software-engineering-studio/sample-tdd/tree/main/javascript)

Each language-specific directory contains two crucial documents:

- **README.md:** Provides a general overview of that particular language's sub-codebase, guiding you through the basics and specific configurations tailored to the language.
- **FRAMEWORK.md:** This document serves as a tutorial explaining the main unit testing framework utilized by that language, offering both insights and step-by-step guidance on effective usage.

# Detailed Instructions for Project Completion:

Each language-specific sub-folder contains its own `README.md` file, which details step-by-step instructions on how to proceed with the assignments. These instructions are tailored to the specifics of each programming environment and testing framework, providing a clear path from setup to execution.

### [C#:](https://github.com/css-software-engineering-studio/sample-tdd/tree/main/csharp)

- **Unit Testing Framework:** The project leverages xUnit, a popular choice for unit testing in C# applications, thoroughly documented by Microsoft: [Unit Testing with xUnit.net and .NET](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-with-dotnet-test), with applied usage [here on Medium](https://medium.com/@kova98/unit-testing-net-7-code-with-xunit-a0cfbca75599), or [alternatively in Video Form](https://www.youtube.com/watch?v=mtlE-iHIrH0).

### [Java:](https://github.com/css-software-engineering-studio/sample-tdd/tree/main/java)

- **Unit Testing Framework:** JUnit is utilized, a staple for Java developers, integrated through Apache Maven. Additional information can be found in Maven’s official guide: [Getting Started with Apache Maven](https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html), with applied usage [here by Marc Nuri](https://blog.marcnuri.com/junit5-how-to-run-unit-tests-in-maven) or [alternatively in Video Form](https://www.youtube.com/watch?v=3IORu_Q0v0E).

### [C++:](https://github.com/css-software-engineering-studio/sample-tdd/tree/main/cplusplus)

- **Unit Testing Framework:** The project utilizes doctest, a light, fast, and open-source testing framework for C++. Additional documentation is readily accessible here: [doctest documentation](bit.ly/doctest-docs), with applied usage [here by Viktor Kirilov](https://www.methodsandtools.com/tools/doctest.php), or [alternatively in Video Form](https://www.youtube.com/watch?v=SiuuotWSFkw).

### [Python:](https://github.com/css-software-engineering-studio/sample-tdd/tree/main/python)

- **Unit Testing Framework:** Python's native `unittest` library supports the TDD approach in this project. Additonal information is available on Python’s official documentation site: [unittest — Unit testing framework](https://docs.python.org/3/library/unittest.html), with applied usage [here by FreeCodeCamp](https://www.freecodecamp.org/news/learning-to-test-with-python-997ace2d8abe/), or [alternatively in Video Form](https://www.youtube.com/watch?v=ibVSPVz2LAA).

### [JavaScript:](https://github.com/css-software-engineering-studio/sample-tdd/tree/main/javascript)

- **Unit Testing Framework:** JavaScript's `jest` library supports the TDD approach in this project. Additonal documentation is available on their official documentation site: [jest — Unit testing framework](https://jestjs.io/docs/getting-started), with applied usage [here by FreeCodeCamp](https://www.freecodecamp.org/news/test-driven-development-tutorial-how-to-test-javascript-and-reactjs-app/), or [alternatively in Video Form](https://www.youtube.com/watch?v=VfTkMjccTzc).

### [Dart:](https://github.com/css-software-engineering-studio/sample-tdd/tree/main/dart)

- **Unit Testing Framework:** Dart's `test` package is used to support the TDD approach in this project. Additional information is available on the official documentation site: [Dart — Unit testing with the test package](https://dart.dev/tools/dart-test), with [extra information here](https://github.com/Yczar/test-driven-dart).

# After Completing IntegerToWordedString()

Upon completing the `IntegerToWordedString()` functionality, follow these concise yet significant steps to enhance your Test-Driven Development (TDD) skills and refine your project:

- **Compare to zukixa-walkthru**: It is ***highly*** suggested to compare your efforts with the one I have done with [this repository](https://github.com/zukixa/walkthru), where I have provided an exemplary walkthrough of how to best complete a TDD project like sample-tdd. If your implementation significantly deviates, look at walkthru closely and understand why!
- **Expert Review:** Schedule a session with a TDD expert (or talk to anyone knowledgeable on the topic, even ChatGPT!) to review your code and discuss the TDD process, even if your learning path doesn't formally require it. Use this opportunity to seek answers to any questions and gain insights into your code's structure and design.
- **Self-Reflection:** Reflect on your experience with key questions:

  - Have my unit tests covered all expected functionalities?
  - What challenges did I encounter in TDD, and how were they resolved?
  - How has TDD impacted the quality and reliability of my program?
  - What improvements can I implement in future TDD projects?

- **Continuous Learning and Feedback:** Keep enhancing your TDD proficiency when able through more complex projects and seek feedback from peers or mentors.
- **Expand Your Expertise:** Continue exploring advanced TDD techniques and other testing methodologies to broaden your software testing skills and knowledge.
- **Take on the next layer:** As part of the 'Home-of-TDD' group of repositories, you have now completed Level 1! [Continuing with the Home-of-TDD path, with Level 2](https://github.com/zukixa/home-of-tdd?tab=readme-ov-file#layer-2-beyond-the-fundamentals----a-lot-of-fun) can help you further practice your skills and knowledge with TDD.

These 'post-completion' next steps are not universal, but guidelines, as they may be different based on the context of situation that this project is being completed.

# Helpful Additional Resources:

- **Additonal information, and the next layers of the Home of TDD can be found back at the [Home Repository](https://github.com/zukixa/home-of-tdd?tab=readme-ov-file#layer-1-so-many-fundamentals----time-to-learn-them)**
- Beyond the layered content, two PDF documents are provided in here to enhance your understanding and application of unit testing concepts:

  > - [TDD Primer:](https://docs.google.com/document/d/1Uxb2fVq267BSKKTXfm6147A4C6zFFDlfIKALhYliaSc/edit?usp=sharing) This live document is derived from discussions with students who have previously engaged with this assignment, and is continuously updated based upon student feedback. (And a likely out of date  
  [PDF](https://github.com/css-software-engineering-studio/sample-tdd/blob/main/PRIMER.pdf) version.)
  > - [Unit Testing:](https://docs.google.com/document/d/16ESV-HJAJi5HvYEkTLNpJCUNP5w9-axnhDSB2uQB3Ts/edit?usp=sharing)
This document contains supplemental information that expands further on unit testing techniques and best practices. (And a likely out-of-date [PDF](https://github.com/css-software-engineering-studio/sample-tdd/blob/main/UNITTESTING.pdf) version.)