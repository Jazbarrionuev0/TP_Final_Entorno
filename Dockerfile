FROM ubuntu
MAINTAINER Jazmin

ADD ["texto.txt", "/texto.txt"]
ADD ["menu.sh", "/menu.sh"]
ADD ["statsWords.sh", "/statsWords.sh"]
ADD ["statsUsageWords.sh", "/statsUsageWords.sh"]
ADD ["findNames.sh", "/findNames.sh"]
ADD ["statsSentences.sh", "/statsSentences.sh"]
ADD ["blankLinesCounter.sh", "/blankLinesCounter.sh"]

ENTRYPOINT ["./menu.sh", "./texto.txt"]

