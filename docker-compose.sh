
docker compose --version > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "docker compose needs to be installed"
  exit 1;
fi

docker compose -f compose.yml build
docker compose -f compose.yml run --rm dev
