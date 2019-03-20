
FROM dorowu/ubuntu-desktop-lxde-vnc

## Update & Tools
	RUN wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	RUN apt-get update 
	RUN apt-get upgrade -y 
	RUN apt-get install -y snapd mc git curl zsh build-essential ubuntu-restricted-extras chromium-browser fonts-font-awesome fonts-powerline sublime-text vim

## OhMyZSH ##
	RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## IDE ##
	RUN mkdir /opt/intellij-idea-ultimate/
	COPY idea/ /opt/intellij-idea-ultimate/current/
	COPY intellij-idea-ultimate_intellij-idea-ultimate.sh /root/Desktop/intellij-idea-ultimate_intellij-idea-ultimate.sh
	RUN chmod +x /root/Desktop/intellij-idea-ultimate_intellij-idea-ultimate.sh

CMD [“echo”,”Image Created”]

