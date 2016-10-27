#PS1="\W $ "
#PS1="\[\033[00m\]🍎 \[\033[01;34m\] \W 🔥\[\033[00m\]  "
PS1="\[\033[01;32m\]\[\033[37m\]🍎 \[\033[01;34m\] \W \[\033[00m\]🔥\[\033[00m\]  " 
set -o vi
#export PATH=$HOME/devel/apache-maven-3.0.4/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export CVSROOT=:pserver:bmilius@cvs:/usr/local/cvs/rposdir/codebase
export CVSEDITOR=/usr/bin/vi
export JETTY_HOME=/usr/local/Cellar/jetty/8.1.3/libexec
export CLICOLOR=1
export PYTHONPATH="${PYTHONPATH}:$HOME/lib/python"
export MAVEN_OPTS='-Xmx2g'
export TC='/usr/local/opt/tomcat/libexec/webapps/'
export jb='ec2-52-2-202-204.compute-1.amazonaws.com'
export ba='ubuntu@ec2-52-37-68-194.us-west-2.compute.amazonaws.com'
export bd='ec2-54-236-65-233.compute-1.amazonaws.com'
export gl='ec2-54-174-4-27.compute-1.amazonaws.com'

# export MYSQL_PATH="/usr/local/Cellar/mysql/5.7.15"
export PATH=$PATH:$MYSQL_PATH/bin

#
#"User Name","Password","Direct Signin Link"
#"bmilius","***REMOVED***","https://nmdp-bioinformatics-research.signin.aws.amazon.com/console"

#"User Name","Access Key Id","Secret Access Key"
#"bmilius","***REMOVED***","***REMOVED***"
#
export EC2_HOME="$HOME/src/amazon/ec2-api-tools-1.6.7.1"
export AWS_ACCESS_KEY="***REMOVED***"
export AWS_SECRET_KEY="***REMOVED***"
export PATH=$PATH:$EC2_HOME/bin
export PATH=$PATH:~/bin/edirect
export PATH=$PATH:~/Library/Android/sdk/platform-tools
#
# Python
# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
gpip(){
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
gpip3(){
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}
# virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
#
export HOMEBREW_GITHUB_API_TOKEN="***REMOVED***"
# aliases
alias vi="mvim -v"
alias py3=python3
alias py=python
alias py2=python2
alias p3=python3
alias p2=python2

# functions
function title {
        echo -ne "\033]0;"$*"\007"
    }
#
# tmuxinator
export EDITOR='vi'
source ~/.bin/tmuxinator.bash
#
#pwerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1 
#. /Users/bmilius/src/powerline/powerline/bindings/bash/powerline.sh
# source
