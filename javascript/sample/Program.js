const Converter = require('./lib/Converter');

function main() {
    const args = process.argv.slice(2);  // Skipping the first two arguments ('node' and script path)
    if (args.length < 1) {
        console.log("Expected parameter <integer>");
        return 1;
    }

    try {
        const number = parseInt(args[0], 10);
        if (isNaN(number)) {
            throw new Error("Expected parameter <integer> is not a valid number");
        }
        console.log(Converter.integerToWordedString(number));
    } catch (error) {
        console.log(error.message);
        return 1;
    }

    return 0;
}

if (require.main === module) {
    main();
}

module.exports = main;