#!/bin/bash
#
#  run.sh by @phulelouch
#  IUSEC website development wrapper.
#

exit_code=0; # set default exit_code

context="$(cd "$(dirname "${BASH_SOURCE[0]}" )/." && pwd )"; # get the directory of where this script lives.

cd $context; # change into the directory of where this script is.

check_binary() { # check for a valid binary, otherwise provide hints on how to get that binary and fail the script.
    if [ $(command -v "$1" &> /dev/null; echo $?) != 0 ]; then
        echo -e "[!] You need to have $1 installed to run Jekyll!\n    See here: <$2>\n";
        exit_code=1;
    fi
}

exit_w() { # exit script with the specified code or otherwise default to 0.
    echo -e "\nquitting...";
    if [ $exit_code ]; then
        exit $exit_code;
    else
        exit 0;
    fi
}

check_binary ruby "https://www.ruby-lang.org/en/";
check_binary bundle "https://bundler.io/";

if [ $exit_code == 0 ]; then # if everything is fine up until now...
    if [ ! -f "Gemfile.lock" ]; then # check to see if Ruby Gems are installed.
        echo -e "Attempting to install ruby gems...";
        bundle install; # install the ruby gems using bundler.
    fi

    if [ $(bundle exec jekyll b &> /dev/null; echo $?) == 0 ]; then # if it is possible to build the site once using jekyll, start a dev server.
        echo -e "[i] Everything is (probably) installed, starting a jekyll dev server...";
        bundle exec jekyll s; # run the dev server.
    else
        echo -e "[!] There may be errors, check that all the ruby gem dependencies have installed properly."; # something went wrong, send help.
    fi
fi

exit_w;
