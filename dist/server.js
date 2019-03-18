import * as express from "express";
const app = express();
app.get("/", (request, response) => {
    response.send("Hello world!");
});
app.listen(5000);
//# sourceMappingURL=server.js.map