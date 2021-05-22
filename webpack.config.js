const path = require('path');

module.exports = {
    entry: "./webpack/entry.js",
    output: {
        path: path.resolve(__dirname, 'assets/generated'),
        filename: "bundle.js"
    },
    module: {
        rules: [
            {
                test: /\.jsx?$/,
                exclude: /(node_modules)/,
                use: "babel-loader"
            }
        ]
    },
    target: ["web", "es6"]
};
