import {
    resolve,
    dirname
} from "path";

import {
    fileURLToPath
} from "url";

import pkg from "dotenv-webpack";
const Dotenv = pkg;


const __dirname = dirname(
    fileURLToPath(
        import.meta.url
    )
);

const common_config = {
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

export default [
    {
        entry: resolve(__dirname, "webpack/search.js"),
        output: {
            path: resolve(__dirname, "assets/generated"),
            filename: "search.js",
        },
        ... common_config
    },
];
