git submodule init
git submodule update
sudo mkdir -p /usr/local/share/emacs/site-lisp
cd packages/emacs-async && make all && sudo make install
cd ../helm && make all && sudo make install
