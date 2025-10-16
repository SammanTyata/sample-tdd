#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "../doctest.h"
#include "../../sample/lib/Converter.hpp"
#include <stdexcept>

// TODO: This test will become obsolete once the IntegerToWordedString function is fully implemented as per the specifications.
TEST_CASE("Converter Function is not implemented")
{
    REQUIRE_THROWS_AS(Converter::IntegerToWordedString(int(INT32_MIN)), std::logic_error);
}

// TODO: Initial "red" test to code logic
TEST_CASE("First positive integer")
{
    int number = 1;
    CHECK(Converter::IntegerToWordedString(number) == "one");
}

// COMPILE & RUN WITH: g++ -std=c++11 ConverterTests.cpp -o ConverterTests && ./ConverterTests