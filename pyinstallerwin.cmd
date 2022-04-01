
pyinstaller graphscad.py --noconsole --onefile --distpath ../build/graphscad_win --icon=graphscad.ico

xcopy  graphscadsettings ..\build\graphscad_win\graphscadsettings /e /i

xcopy  graphscadfiles ..\build\graphscad_win\graphscadfiles /e /i

xcopy  plugins ..\build\graphscad_win\plugins /e /i

xcopy  userplugins ..\build\graphscad_win\userplugins /e /i

xcopy  icons ..\build\graphscad_win\icons /e /i

xcopy openscad.exe ..\build\graphscad_win 

xcopy color-schemes ..\build\graphscad_win\color-schemes /e /i

xcopy fonts ..\build\graphscad_win\fonts  /e /i

pause

