# Arabic-English-Subtitling
Automatic Video Subtitling System for Arabic/English Using Speech Recognition 

<!--- These are examples. See https://shields.io for others or to customize this set of shields. You might want to include dependencies, project status and licence info here --->
![GitHub repo size](https://img.shields.io/github/repo-size/bassemmohamed/Arabic-English-Subtitling)
![GitHub contributors](https://img.shields.io/github/contributors/bassemmohamed/Arabic-English-Subtitling)
![GitHub stars](https://img.shields.io/github/stars/bassemmohamed/Arabic-English-Subtitling?style=social)
![GitHub forks](https://img.shields.io/github/forks/bassemmohamed/Arabic-English-Subtitling?style=social)
![Twitter Follow](https://img.shields.io/twitter/follow/bassemmohamed94?style=social)

The goal of this project is to develop an application that allows subtitling of English and Arabic. The application will provide the user with a full subtitle file at the end of the execution. The subtitling will be based on the CMU-Sphinx speech recognition engine which is open source GNU software.

In this project, the ASR engine will be mostly used as a black box and the role of the student would be to understand how to integrate the engine with his application.

## Main 6 Steps for subtitling

1. Extract audio from video [FFMPRG](https://ffmpeg.org)
2. Convert audio to 16khz one channel [FFMPRG](https://ffmpeg.org)
3. Finding out where each speech pause in the audio [LIUM](https://cmusphinx.github.io/wiki/speakerdiarization)
4. Segmenting the audio at each pause using [FFMPRG](https://ffmpeg.org)
5. Speech recognize each segment ( CMU SPHINX )
6. Save to an srt file

## 3rd Libraries used

1. LIUM: Detects segments
2. FFMPEG: Converts and segemetns audio
3. SPHINX: Speech Recognition Engine

## Scripts used

1. AudioSegmentor: Cuts audio to segments using [LIUM](https://cmusphinx.github.io/wiki/speakerdiarization) & [FFMPRG](https://ffmpeg.org)
2. SubtitleWriter: Write the subtile file

## Items needed for speech recognition:

1. The decoder source code
2. The language dictionary
3. The acoustic model
4. The language model
5. The test data

## Contact

If you want to contact me you can reach me at `bassemmohamed1994@gmail.com`.

## License
<!--- If you're not sure which open license to use see https://choosealicense.com/--->

This project uses the following license: [GNU](https://choosealicense.com/licenses/gpl-3.0/).





