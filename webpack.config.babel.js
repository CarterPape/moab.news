import {
    resolve,
    dirname
} from 'path';

import {
    fileURLToPath
} from 'url';

import pkg from "dotenv-webpack";
const Dotenv = pkg;


const __dirname = dirname(
    fileURLToPath(
        import.meta.url
    )
);

export default {
    entry: resolve(__dirname, "webpack/main.js"),
    output: {
        path: resolve(__dirname, 'assets/generated'),
        filename: "main.js",
    },
    module: {
        rules: [
            {
                test: /\.jsx?$/,
                exclude: /(node_modules)/,
                use: [{
                    loader: "babel-loader"
                }],
            }
        ]
    },
    plugins: [
        new Dotenv(),
    ],
    target: "web",
};
