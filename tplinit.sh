#!/bin/bash

if [ ! [x`pwd | grep .*node-webapp-template` = x1] ]; then
  echo "EXITING"
  exit 1
fi

rm -rf .git
rm package.json
rm README.md
rm LICENSE

echo "enter project name for new package.json"
read package_json_project_name

echo "{" >> package.json
echo "  \"name\": \"${package_json_project_name}\"," >> package.json
echo "  \"version\": \"0.0.1\"," >> package.json
echo "  \"description\": \"\"," >> package.json
echo "  \"main\": \"server.js\"," >> package.json
echo "  \"scripts\": {" >> package.json
echo "    \"webpack\": \"webpack\"," >> package.json
echo "    \"webpackServer\": \"webpack-dev-server --hot --inline --port 8081\"," >> package.json
echo "    \"watchServer\": \"nodemon -e js,jsx,json -w server.js -w src/server -i src/client -x babel-node server\"," >> package.json
echo "    \"devServers\": \"parallelshell \\\"npm run webpackServer\\\" \\\"npm run watchServer\\\" \"," >> package.json
echo "    \"test\": \"./node_modules/mocha/bin/mocha \$(find src -name '*-test.js') --compilers js:babel-core/register\"" >> package.json
echo "  }," >> package.json
echo "  \"author\": \"\"," >> package.json
echo "  \"license\": \"MIT\"," >> package.json
echo "  \"dependencies\": {" >> package.json
echo "    \"ejs\": \"^2.5.1\"," >> package.json
echo "    \"express\": \"^4.13.3\"" >> package.json
echo "  }," >> package.json
echo "  \"devDependencies\": {" >> package.json
echo "    \"babel-cli\": \"^6.4.0\"," >> package.json
echo "    \"babel-core\": \"^6.1.21\"," >> package.json
echo "    \"babel-loader\": \"^6.1.0\"," >> package.json
echo "    \"babel-preset-es2015\": \"^6.1.18\"," >> package.json
echo "    \"colors\": \"^1.1.2\"," >> package.json
echo "    \"chai\": \"^3.5.0\"," >> package.json
echo "    \"mocha\": \"^2.5.3\"," >> package.json
echo "    \"nodemon\": \"^1.8.1\"," >> package.json
echo "    \"webpack\": \"^1.12.6\"," >> package.json
echo "    \"webpack-dev-server\": \"^1.12.1\"," >> package.json
echo "    \"parallelshell\": \"^2.0.0\"" >> package.json
echo "  }" >> package.json
echo "}" >> package.json
