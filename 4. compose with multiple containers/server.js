const express = require("express");
const morgan = require("morgan");
const redis = require("redis");

const app = express();
const PORT = 4000;
const client = redis.createClient({
    host: "redis-server",
    port: 6379
});
client.set("visits", 0);

app.use(morgan("dev"));

app.get("/", (req, res) => {
    client.get("visits", (err, visits) => {
        res.send("Number of visits " + visits);
        client.set("visits", parseInt(visits) + 1);
    });
});

app.listen(PORT, () => {
    console.log("app started on port", PORT);
});
