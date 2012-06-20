#!/bin/bash

echo "" >> $HOME/.bashrc
echo "# begin virtualenvwrapper support" >> $HOME/.bashrc
echo "export WORKON_HOME=$HOME/.environments" >> $HOME/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> $HOME/.bashrc
echo "# end virtualenvwrapper support" >> $HOME/.bashrc
echo "" >> $HOME/.bashrc
