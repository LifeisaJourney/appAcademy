# Chrome
Here at App Academy, our browser of choice is Google Chrome. This isn't super important at the beginning of the course, but once we get into frontend development the Chrome Devtools (think frontend debugging) are going to play a very important role.

To install, download from the Google Chrome and install.

# Xcode
Let's start with Xcode. The Xcode command line tools are a requirement for installing the homebrew package manager in the next step.

NOTE: If you are using a Linux machine you will not be able to install Xcode or homebrew. Instead please follow these git installation directions and then these rbenv installation directions (up to and including "Installing Ruby versions") to download rbenv using git. Once you are finished, skip to the section on Git and ignore all commands involving homebrew.

Install the Xcode command line tools by running the following from the console.

$ xcode-select --install
To conclude the installation you will need to agree to the Xcode license. Start the Xcode app, click "Agree", and allow the installation to finish. Then you can go ahead and quit the Xcode app.

# Homebrew
Homebrew is kind of like a low-tech App Store. It allows us access to and the ability to install a wide variety of software and command line tools from the console. These are distinct from those hosted on the App Store and will need to be managed by Homebrew.

Enter the following in your terminal to download and install Homebrew:

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
You will be given a list of dependencies that will be installed and prompted to continue or abort. Press RETURN to continue.

Let's break this command down a bit. curl, a command-line tool commonly used for downloading files from the internet, is used to download the Homebrew installation file. The "$(...)" transforms the file content into a string. Finally, the string is passed to our Ruby executable (/usr/bin/ruby is where this the system Ruby executable file is stored on our machine) with the -e flag to tell Ruby to run the argument as code.

Check out the Homebrew website to learn the basic commands.

# Git
Git is a version control system that allows us to track, commit and revert changes to files within a directory. Here we will install it and add global user info.

### install git
brew install git

### makes git terminal output pretty
git config --global color.ui true

### this will mark you as the 'author' of each committed change
git config --global user.name "your name here"

### use the email associated with your GitHub account
git config --global user.email your_email_here
VS Code
This one is pretty easy. Go to code.visualstudio.com, then download and install VS Code.

To verify that the shell commands were installed correctly, run which code in your terminal. If code is not a recognized command, open the VS Code editor, open the Command Palette (Cmd+Shift+P on macOS ,Ctrl+Shift+P on Linux) and type shell command to find the Shell Command: Install 'code' command in PATH command. Then restart the terminal. This allows you to easily open files in VS Code from the terminal using the code command followed by a file or directory.

Next, we'll want to install a few useful VS Code extensions and configure VS Code to play nice with these extensions. Download this zip file, which contains a scripts that will do the work for you. Unzip the file and open the setup_vscode directory. Then open that directory in the terminal (drag and drop it over the terminal icon on macOS or right click in the directory and select Open in Terminal on most Linux distributions). To run the script, type ./setup_vscode.sh. The script will do the rest. Simply restart VS Code and you'll be good to go. (Note that there's a second script, called setup_vscode_linter.sh. We can't run this script yet but will do so in due time.)

# Phase 1: Ruby

Follow the insatllation walkthrough above. The commands you need to enter are listed below.. Here we will be setting up Ruby with the help of rbenv, a Ruby environment manager. We like rbenv because it allows us to switch between versions of Ruby easily and setup default versions to use within project directories. This will install instances of Ruby in addition to the system version, which comes pre-installed.

# Rbenv + Ruby
First we will install rbenv, then use it to install our desired version of Ruby.

### install rbenv
brew install rbenv

### add to the PATH (rbenv commands are now available from terminal)
### .bashrc is the file that contains all of our terminal settings
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

### initialize rbenv everytime you open a new console window (otherwise our system ruby version will take over when we start a new terminal session)
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

### update current console window with new settings
source ~/.bashrc

### source .bashrc from .bash_profile (necessary on some machines)
echo 'source ~/.bashrc' >> ~/.bash_profile

### install Ruby version 2.5.1
rbenv install 2.5.1

### set version 2.5.1 to be our global default
rbenv global 2.5.1

### the 'rehash' command updates the environment to your configuration
rbenv rehash

### and let's verify everything is correct
### check the version
ruby -v # => 2.5.1

### check that we are using rbenv (this tells you where the version of ruby you are using is installed)
which ruby # => /Users/your-username/.rbenv/shims/ruby

# Gems
There are a few gems we will want to access globally.

Bundler allows us to define project dependencies inside a Gemfile and gives us a bunch of commands to update, remove and install them. Check out the Bundler docs for more info.
Pry is an alternative to the Irb (the default Ruby REPL). It is not only more powerful, but also easier to use than Irb and should be your go-to for running and debugging Ruby code. Check out the Pry website for more info and a super useful tutorial.
Byebug is feature-rich debugging tool for Ruby. With Byebug you can halt the execution of your code and inspect/track variables and the flow of execution. Lots of cool features in here, so check out the Byebug docs!
Let's install them.

gem install bundler pry byebug