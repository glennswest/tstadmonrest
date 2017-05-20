docker build -t tstadmonrest .
docker tag tstadmonrest ctl.ncc9.com:5000/gui
docker push ctl.ncc9.com:5000/gui

