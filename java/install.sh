
if [ $(jenv versions | grep 1.6 | wc -l) -eq 0 ]; then
  jenv add /Library/Java/JavaVirtualMachines/1.6*/Contents/Home
fi
if [ $(jenv versions | grep 1.7 | wc -l) -eq 0 ]; then
  jenv add /Library/Java/JavaVirtualMachines/jdk1.7*/Contents/Home
  jenv global 1.7
fi
