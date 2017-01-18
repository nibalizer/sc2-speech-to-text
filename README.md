Watson Speech to text output on a SC2 Vod
-----------------------------------------



to enjoy
--------


* open [this video](https://www.youtube.com/watch?v=R0UdE-3hVBk)
* run ``python readout.py``


watson request
--------------

```bash
curl -s -X POST -u "username":"password" \
--header "Content-Type: audio/ogg;codecs=opus" \
--data-binary "@starcraft.ogg" \
"https://stream.watsonplatform.net/speech-to-text/api/v1/recognize?timestamps=true&word_alternatives_threshold=0.9&keywords=%22stats%22%2C%22build%22%2C%22innovation%22&keywords_threshold=0.5&continuous=true" > response.json
```

youtube link
-------------

https://www.youtube.com/watch?v=R0UdE-3hVBk


ffmpeg command
--------------

```
ffmpeg -i Starcraft_2_-_INnoVation_vs__Stats__TvP__-_Grand_Final_-_Map_1_-_IEM_Gyeonggi.mp4 -vn -acodec opus starcraft.ogg
```


docs
----

* generic: http://www.ibm.com/watson/developercloud/doc/speech-to-text/http.shtml
* audio codecs information: http://www.ibm.com/watson/developercloud/doc/speech-to-text/input.shtml#formats
* docs: http://www.ibm.com/watson/developercloud/speech-to-text/api/v1/#recognize_sessionless_nonmp12
