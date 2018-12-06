require! <[ path electron ]>

electron.app.on \ready ->
  wnd = new electron.BrowserWindow

  wnd.loadFile path.join __dirname, \index.html

  wnd.on \close ->
    electron.app.quit!
