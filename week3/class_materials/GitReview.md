**Git Review Sheet**


**mv RubyFall2012 OLDRubyFall2012** (moves your old repo out of the way,
if your working directory is clean, you can just delete the old
directory)


**git clone git@github.com:YOURUSERNAME/RubyFall2012.git**(creates the
RubyFall2012 directory and copies the files form your fork into it)

**cd RubyFall2012**

**git remote add uwe-ruby
git://github.com/UWE-Ruby/RubyFall2012.git**(add the remote for the
uwe-ruby class version)


**gem install grb** (install git remote branch if you don't have the gem
already)

**grb new answers** (make a new remote branch called answers, grb will
put you on that branch once it's created)

**git pull uwe-ruby master** (merge the uwe-ruby changes into your
answers branch)

You may have to resolve merge conflicts!


**git push** (push the answers branch to your fork on github)


**git checkout master**(go back to your main branch to do your work)


When your working directory on master is clean do:

**git merge answers**


Any conflicting files on master do this:

**git checkout HEAD \<filename\>** (resets any conflicts to your
version, keeping my answers on answers branch and your answers on master
branch)


**git push** (will update your fork on github)
