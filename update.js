const fs = require('fs');

var packagejson = require('./package.json');

packagejson.build.publish = {
    url: "https://github.com/amoosbr/homebrew-openlens/releases/download/Latest",
    provider: "generic"
};

packagejson.build.win.artifactName = "OpenLens.Setup.${version}.${ext}";

fs.writeFileSync('package.json', JSON.stringify(packagejson));
