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
>       string IntegerToWordedString(int number);
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

### `src/main/java/Program.java`

A simple console app interface for the conversion code. The console app takes a single integer parameter and outputs the converted worded string value on the console.

### `src/main/java/lib/Converter`

The utility class that includes the `IntegerToWordedString` as a public static function.

### `src/test/java/Converter_IntegerToWordedString_Tests`

The complete set of unit tests for the `IntegerToWordedString` function that is the focus of this project. Note the starting set of unit tests contain one test `NotImplementedYet` that may be obsoleted if you implement the complete functionality or the conversionspecification.

## Downloading & Setting Up Maven

[Maven](https://maven.apache.org/download.cgi) is a powerful project management tool that is used for Java projects. It can help you compile your code, package it, and then deploy it. It also handles dependencies and can be used to run your unit tests.

Inspired by their [official Tutorial](https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html), \
here's how you can download and set up Maven to start running Java unit tests on your system:

### Prerequisites

Before installing Maven, make sure you have Java installed on your system. Maven requires Java to run. You can check if you have Java installed and its version by running the following command in your terminal or command prompt:

`java -version` \
If Java is installed, you should see the version number. If not, you'll need to download and install Java first.

#### Step 1: Download Maven

Visit the official Maven download page.
Download the latest version of Maven. You'll see a version like `"apache-maven-3.8.1-bin.zip"`(the version may vary).
Once downloaded, extract the zip file to a directory on your system where you want Maven to be. `For example, C:\apache-maven-3.8.1 on Windows or /opt/apache-maven-3.8.1 on Unix/Linux systems.`

#### Step 2: Set Up Environment Variables

You need to set up environment variables so that Maven can be run from any directory in your system.

**For Windows:** \
Go to `System Properties` -> `Advanced system settings` -> `Environment Variables.`\
Create a new system variable called `MAVEN_HOME` and set its value to the path where you extracted Maven `(e.g., C:\apache-maven-3.8.1).` \
Find the Path system variable and edit it. Add a new entry: `%MAVEN_HOME%\bin.` \
Click `OK` to close all dialogs. \
\
**For Unix/Linux/MacOS:** \
Open your terminal. \
Edit your profile settings file `(e.g., ~/.bashrc, ~/.zshrc, ~/.profile, etc.)` to include the following lines, replacing `/opt/apache-maven-3.8.1` with the path where you extracted Maven: \
`export MAVEN_HOME=/opt/apache-maven-3.8.1`
& `export PATH=$PATH:$MAVEN_HOME/bin` \
Save the file and then run `source ~/.bashrc (replace .bashrc with your profile settings file name)` to apply the changes. \

#### Step 3: Verify Installation

To verify that Maven has been installed correctly, open a new terminal or command prompt and run:

`mvn -version` \
You should see the version of Maven you installed, along with some environment details. If you see this, Maven has been successfully installed and is ready to use for your Java unit testing.

#### Step 4:

You should also see a `pom.xml` file. It essentially acts as a blueprint for your project. It outlines the project's structure, details about how the project is to be built, reports to be generated, dependencies the project has, and more. Imagine it as a comprehensive manifest that Maven relies on to perform its duties, from compiling code to packaging it into deployable formats.

For those curious, the backbone of the `pom.xml` file comprises:

- `Project Coordinates (groupId, artifactId, and version):` These elements uniquely identify your project across all projects. The groupId represents the organization or group that the project belongs to, the artifactId is the project’s name, and the version is a specific release iteration of the project. \
- `Dependencies:` This section lists external libraries (in our case, JUnit) that your project depends on to function correctly. It ensures that Maven can automatically download and include these libraries in your project, streamlining the build process.
- `Build Plugins:` Plugins augment Maven's capabilities, allowing for customization of the build process. For instance, the maven-surefire-plugin included in the provided pom.xml enables Maven to execute unit tests as part of your project’s build lifecycle.

## Building and Testing

While the system can be built and tested using different IDEs, this project was created and tested using VSCode. Testing was performed by running the full set of tests in the VSCode terminal window using `mvn` command -- specifically, executing `mvn test` after changing the current directory to `java` root folder.

The first execution should result in final "red" state test status like:

> <span style='color:red;font-family:monospace;font-weight: bold'>[ERROR] Tests run: 2, Failures: 1, Errors: 0, Skipped: 0</span>

## Using TDD to Implement the Feature

Follow the instructions in [IMPLEMENTATION.md](../IMPLEMENTATION.md).