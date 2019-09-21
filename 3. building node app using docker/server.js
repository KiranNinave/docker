const express = require("express");
const morgan = require("morgan");

const app = express();

const PORT = 4000;

app.use(morgan("dev"));

app.get("/", (req, res) => {
    res.send("<h3>Hello, </h3><h1>From Node and Docker App.</h1>");
});

app.listen(PORT, () => {
    console.log("app started on", PORT);
});
