var rimraf = require("rimraf");
var args = process.argv.slice(2);
for (var i in args) {
    console.log("rm " + args[i]);
    rimraf(args[i], function (err) {
        if (err) {
            console.log(err);
        }
    });
}
