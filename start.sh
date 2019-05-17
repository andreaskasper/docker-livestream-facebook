
echo "ffmpeg -re -i $INPUT -s 1280x720 -c:v libx264 -c:a aac -f flv rtmp://127.0.0.1:1936/rtmp/$FACEBOOK_KEY"
ffmpeg -re -i $INPUT -s 1280x720 -c:v libx264 -c:a aac -f flv rtmp://127.0.0.1:1936/rtmp/$FACEBOOK_KEY
