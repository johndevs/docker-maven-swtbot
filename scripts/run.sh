export DISPLAY=:99
Xvfb :99 -screen 0 1680x1050x16 -ac &
ratpoison &

printf -v command "%s, " "$@"
command=${command%??}
cd /project
mvn -Dmaven.repo.local=/maven-cache $command
