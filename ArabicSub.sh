echo '########## Converting video file to .wav ##########'
chmod u+x ./Arbvideo.mp4
ffmpeg -i Arbvideo.mp4 audio.mp3
chmod u+x ./audio.mp3
ffmpeg -i audio.mp3 -acodec pcm_s16le -ac 1 -ar 16000 audio.wav

echo '########## Excecuting Lium.jar for segmentation ##########'
mv ./audio.wav ./audio.mfcc
chmod u+x ./JarFiles/LIUM.jar
/usr/bin/java -Xmx2024m -jar ./JarFiles/LIUM.jar \ --fInputMask= ./audio
chmod u+x ./audio.mfcc
mv ./audio.mfcc ./audio.wav 

echo '########## Preparing Directory For AudioSegmentor.jar ##########'
mkdir ./Segments
mv ./audio.out.seg ./SegmentsFrame.txt
echo 'Hello, world.' >ControlFile.txt
echo 'Hello, world.' >IntervalFile.txt

echo '########## Excecuting AudioSegmentor.jar for segmentation ##########'
chmod u+x ./JarFiles/AudioSegmentor.jar
/usr/bin/java -Xmx2024m -jar ./JarFiles/AudioSegmentor.jar

echo '########## Excecuting PocketSphinx for speech recognition ##########'
pocketsphinx_batch -cepdir ~/Desktop/Test/Segments -ctl ControlFile.txt -hmm ~/CodeWorm/Thesis/Arabic/Acousticmodel/16 -dict ~/CodeWorm/Thesis/Arabic/arabic_250k.dic -lmctl ~/CodeWorm/Thesis/Arabic/Languagemodel/arabic.3g.nemlar_noRMC_netdc.v01.arpa -cepext .wav -adcin yes -hyp speech.txt

echo '########## Writing Srt file. ##########'
echo 'Hello, world.' >Subtitle.srt
chmod u+x ./JarFiles/SubtitleWriter.jar
/usr/bin/java -Xmx2024m -jar ./JarFiles/SubtitleWriter.jar

echo '########## Deleting Files & Folders ##########'
'
rm -r -f ./Segments
rm -f ./audio.wav
rm -f ./audio.mp3
rm -f ./SegmentsFrame.txt
rm -f ./IntervalFile.txt
rm -f ./ControlFile.txt
rm -f ./speech.txt
'	
