Text from sc2dojo.tumblr.com and is (c) Artosis


create model

{"customization_id": "b93290b0-52b0-11e7-a2b2-17481cb0c9b8"}

create corpus doc
-----------------


artosis_adept_phoenix.txt

add corpus


monitor corpus analysis
-----------------------


$: ./monitor_corpus.sh
{
   "out_of_vocabulary_words": 0,
   "total_words": 0,
   "name": "starcraft",
   "status": "being_processed"
}
$: ./monitor_corpus.sh 
{
   "out_of_vocabulary_words": 20,
   "total_words": 3759,
   "name": "starcraft",
   "status": "analyzed"
}


delete extra words
------------------


$: ./delete_words.sh 
{}
{}
{}
{}
{}
{}
{}
{}
{}



reverify
---------


$: ./monitor_corpus.sh 
{
   "out_of_vocabulary_words": 20,
   "total_words": 3759,
   "name": "starcraft",
   "status": "analyzed"
}


train
-----

