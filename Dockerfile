FROM python:3.7.13

RUN python -m pip install --upgrade pip &\
			pip install ffprobe ffmpeg
		
WORKDIR /home/app

ADD https://github.com/yt-dlp/yt-dlp/releases/download/2022.08.14/yt-dlp .

RUN chmod +x ./yt-dlp

ENTRYPOINT ["./yt-dlp"]
