ffmpeg -framerate 3 -i a.%04d.png -vf "scale=640:-1:flags=lanczos" output.gif
ffmpeg -framerate 3 -i a.%04d.png -c:v libx264 -pix_fmt yuv420p output.mp4
