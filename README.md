# Arabic-English-Subtitling
Automatic Video Subtitling System for Arabic/English Using Speech Recognition 

The goal of this project is to develop an application that allows subtitling of English andArabic.  The application will provide the user with a full subtitle le ready to be usedby the user.  The subtitling will be based on the CMU-Sphinx speech recognition enginewhich is open source GNU software.  In this project, the ASR engine will be mostly usedas a black box and the role of the student would be to understand how to integrate theengine with his application.

* Main 6 Steps: 

1- extract audio from video ( FFMPEG )
2- convert audio to 16khz one channel ( FFMPEG )
3- finding out where each speech pause in the audio ( LIUM )
4- segmenting the audio at each pause ( FFMPRG )
5- speech recognize each segment ( CMU SPHINX )
6- save to an srt file

* Libraries used:  

1- LIUM : Detecting segments
2- FFMPEG :  Converting file
3- SPHINX : Speech recognition engine
4- AudioSegmentor : Cuts audio to many segments
5- SubtitleWritet : Write the subtile file

* List needed by sphinx to do speech recognition:

1- the decoder source code
2- the language dictionary
3- the acoustic model
4- the language model
5- the test data
