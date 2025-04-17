
for iter in $(seq 1 100); do

    curl -s http://localhost:8000/v1/completions \
      -H "Content-Type: application/json" \
      -d '{
        "model": "facebook/opt-125m",
        "prompt": "San Francisco is a",
        "max_tokens": 50,
        "temperature": 0
      }' > /dev/null &

    sleep 0.1

done
