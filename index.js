require('dotenv').config();
const http = require("http");
const fs = require("fs");
var requests = require("requests");
const express = require('express');
const app = express();
const PORT = 3300;

const homeFile = fs.readFileSync("index.html", "utf-8");


var replaceVal = (tempVal, orgVal) => {
    let temperature = tempVal.replace("{%tempval%}", orgVal.main.temp);
    temperature = temperature.replace("{%tempmin%}", orgVal.main.temp_min);
    temperature = temperature.replace("{%tempmax%}", orgVal.main.temp_max);
    temperature = temperature.replace("{%location%}", orgVal.name);
    temperature = temperature.replace("{%country%}", orgVal.sys.country);
    temperature = temperature.replace("{%tempstatus%}", orgVal.weather[0].main);

    return temperature;
};

app.get('/:name', (req, res) => {
    console.log(req.params.name);
    requests(
        `http://api.openweathermap.org/data/2.5/weather?q=${req.params.name}&units=metric&appid=${process.env.APPID}`
    )
        .on("data", (chunk) => {
            const objdata = JSON.parse(chunk);
            const arrData = [objdata];

            console.log('arrData   =>', arrData);
            const realTimeData = arrData
                .map((val) => replaceVal(homeFile, val))
                .join("");
            res.write(realTimeData);
        })
        .on("end", (err) => {
            if (err) return console.log("connection closed due to errors", err);
            res.end();
        });
});
app.get('/', (req, res) => {
    res.send("pleade use name of cite like localhost:3300/Agra")
})
app.listen(PORT, () => {
    console.log(`Server running at: http://localhost:${PORT}/`);
});