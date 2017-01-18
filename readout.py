from collections import defaultdict
import time
import json

data = json.loads(open('response.json').read())

results = data["results"]

timings = defaultdict(str)

max_secs = 0

for i in results:
    seconds = int(i['alternatives'][0]['timestamps'][0][1],)

    transcript = i['alternatives'][0]['transcript']
    timings[seconds] = transcript
    max_secs = seconds

for i in range(seconds):
    time.sleep(1)
    print timings[i]






