docker stop gui.ncc9.com
docker kill gui.ncc9.com
docker rm gui.ncc9.com
sleep 2
docker run -d -P --name gui.ncc9.com gui
