
FROM dorowu/ubuntu-desktop-lxde-vnc

## Update & Tools
	# RUN add-apt-repository ppa:webupd8team/sublime-text-3
	RUN apt-get update 
	RUN apt-get upgrade -y 
	RUN apt-get install -y snapd mc git curl fish build-essential ubuntu-restricted-extras chromium-browser fonts-font-awesome fonts-powerline vim openjdk-11-jdksudo apt install snapd snapd-xdg-open

	RUN snap install pycharm-professional --classic


## Dots ##
	RUN git pull http://github.com/colla69/Dots.git
	RUN git pull http://github.com/colla69/CVHost.git


## IDE ##
	RUN mkdir /opt/intellij-idea-ultimate/
	COPY idea/ /opt/intellij-idea-ultimate/current/
	# COPY intellij-idea-ultimate_intellij-idea-ultimate.sh /root/Desktop/intellij-idea-ultimate_intellij-idea-ultimate.sh
	
