ffmpeg -re -stream_loop -1 -i test.mp4 -c copy -f rtsp rtsp://localhost:8554/stream

ffmpeg -re -stream_loop -1 -i test.mp4 -c copy -rtsp_transport tcp -f rtsp rtsp://127.0.0.1:8554/stream
ffmpeg -re  -i test.mp4 -c copy -f rtsp -rtsp_transport tcp rtsp://localhost:8554/mystream

setup Test input /Users/zenwell/ycp/github/dcoker-compose-awesome/rtsp_server/test.mp4


# h264推流
ffmpeg -re -stream_loop -1 -i test.mp4 -vcodec h264 -acodec aac -f rtsp -rtsp_transport tcp rtsp://localhost:8554/stream
ffmpeg -re -stream_loop -1 -i D://test.mp4 -vcodec h264 -acodec aac -f rtsp -rtsp_transport tcp rtsp://localhost:554/stream
# h265推流
ffmpeg -re -i "/path/to/test.mp4" -vcodec h265 -acodec aac -f rtsp -rtsp_transport tcp rtsp://127.0.0.1/live/test
