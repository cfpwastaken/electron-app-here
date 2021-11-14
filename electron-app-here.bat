@echo off
echo const { app, BrowserWindow, Menu } = require("electron"); > main.js
echo. >> main.js
echo require("electron-reload")(__dirname); >> main.js
echo. >> main.js
echo Menu.setApplicationMenu(null); >> main.js
echo. >> main.js
echo let mainWindow; >> main.js
echo. >> main.js
echo app.on("ready", () =^> { >> main.js
echo    mainWindow = new BrowserWindow({ >> main.js
echo       width: 800, >> main.js
echo       height: 600, >> main.js
echo       webPreferences: { >> main.js
echo          nodeIntegration: true, >> main.js
echo          contextIsolation: false >> main.js
echo       } >> main.js
echo    }); >> main.js
echo. >> main.js
echo    mainWindow.webContents.openDevTools(); >> main.js
echo. >> main.js
echo    mainWindow.loadFile("app/index.html"); >> main.js
echo }); >> main.js

mkdir app
echo ^<!DOCTYPE html^> > app/index.html
echo ^<html^> >> app/index.html
echo ^<head^> >> app/index.html
echo    ^<meta charset="utf-8"^> >> app/index.html
echo    ^<title^>Electron App^</title^> >> app/index.html
echo    ^<link rel="stylesheet" href="style.css"^> >> app/index.html
echo    ^<script src="script.js"^>^</script^> >> app/index.html
echo ^</head^> >> app/index.html
echo ^<body^> >> app/index.html
echo    ^<h1^>Electron App^</h1^> >> app/index.html
echo    ^<p^>This is a simple Electron app.^</p^> >> app/index.html
echo ^</body^> >> app/index.html
echo ^</html^> >> app/index.html

echo @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300'); > app/style.css
echo. >> app/style.css
echo body { >> app/style.css
echo    margin: 0; >> app/style.css
echo } >> app/style.css
echo. >> app/style.css
echo * { >> app/style.css
echo    font-family: 'Roboto', sans-serif; >> app/style.css
echo } >> app/style.css

echo console.log("Hello World!"); > app/script.js

call npm init -y

call npm i electron
call npm i electron-reload