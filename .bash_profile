# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

export PATH="${PATH}:${HOME}/.krew/bin"
export JAVA_HOME=/usr/lib/jvm/jre
PATH=$PATH:$HOME/.local/bin:$HOME/bin:/usr/local/bin
export EC2_HOME=/usr/local/src/ec2-api-tools
#export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=~/ec2/pk-XS56YFGHQAK2GJE2JOVK3H46G5WCVJTU.pem
export EC2_CERT=~/ec2/cert-XS56YFGHQAK2GJE2JOVK3H46G5WCVJTU.pem
source ~/ec2/eu-settings

