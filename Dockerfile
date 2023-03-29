# Base image
FROM ansible/ansible:ubuntu1604

# Install dependencies
RUN pip install --upgrade boto
RUN apt-get update
RUN apt-get install python3-pip --yes
RUN pip3 install Jinja2==2.11.3
RUN pip3 install MarkupSafe==1.1.1
RUN pip3 install cryptography==3.2
RUN pip3 install pynacl==1.4.0 
RUN pip3 install bcrypt==3.1.3
RUN pip3 install paramiko==2.12.0
RUN pip3 install ansible==2.5.5

CMD ["echo", "Build Done"]