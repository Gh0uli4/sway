while true; do
  rclone sync ~/dir dgrive:dir
  sleep 60
done
