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

note: this took 9m44s for watson to return


youtube link
-------------

https://www.youtube.com/watch?v=R0UdE-3hVBk


ffmpeg command
--------------

```
ffmpeg -i Starcraft_2_-_INnoVation_vs__Stats__TvP__-_Grand_Final_-_Map_1_-_IEM_Gyeonggi.mp4 -vn -acodec opus starcraft.ogg
```


Adding Keywords
---------------

By adding more keywords to the keyword search I was able to change the responses. See the diff in this repository. It was able to better pick out words that were already in the dictionary like 'tasteless' and 'phoenix' but it didn't add new words like 'medivac.'


From the docs: " Custom models provides an HTTP interface for creating custom language models. The interface lets you expand the vocabulary of a base language model with domain-specific terminology." This will be investigated next.



docs
----

* generic: http://www.ibm.com/watson/developercloud/doc/speech-to-text/http.shtml
* audio codecs information: http://www.ibm.com/watson/developercloud/doc/speech-to-text/input.shtml#formats
* docs: http://www.ibm.com/watson/developercloud/speech-to-text/api/v1/#recognize_sessionless_nonmp12
