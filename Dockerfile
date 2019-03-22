
FROM dorowu/ubuntu-desktop-lxde-vnc

## Update & Tools
	# RUN add-apt-repository ppa:webupd8team/sublime-text-3
	RUN apt-get update 
	RUN apt-get upgrade -y 
	RUN apt-get install -y snapd mc git curl zsh build-essential ubuntu-restricted-extras chromium-browser fonts-font-awesome fonts-powerline vim openjdk-11-jdk

## OhMyZSH ##
	RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	COPY ./.zshrc /root/.zshrc

## IDE ##
	RUN mkdir /opt/intellij-idea-ultimate/
	COPY idea/ /opt/intellij-idea-ultimate/current/
	COPY intellij-idea-ultimate_intellij-idea-ultimate.sh /root/Desktop/intellij-idea-ultimate_intellij-idea-ultimate.sh
	
