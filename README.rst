Description
===========
This cookbook does common work for all nodes being managed by Chef. Currently,
it just installs `vim` for all OS and runs `apt-get update` periodically on
Debian/Ubuntu.

Requirements
============
This cookbook depends on `apt` cookbook, which will be include at Debian/Ubuntu
nodes.

Attributes
==========
The only attribut avaliable is the `vim` package name.

Usage
=====
You should include default recipe in all your nodes::

    include_recipe 'enviro'
