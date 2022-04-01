pyinstaller graphscad.py --noconsole --onefile --distpath ../build/graphscad_ubu
cp  graphscadsettings ../build/graphscad_ubu/graphscadsettings -r
cp  graphscadfiles ../build/graphscad_ubu/graphscadfiles -r
cp  plugins ../build/graphscad_ubu/plugins -r
cp  userplugins ../build/graphscad_ubu/userplugins -r
cp  icons ../build/graphscad_ubu/icons -r

