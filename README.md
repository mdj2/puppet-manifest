#Provision a Centos 6.4 VM Vagrant box using Puppet

##Purpose
Using a vanilla centos 6.4 image, create a puppet manifest that mirrors the configuration of the web and DB servers at PSU.
##Install
Install Vagrant and Virtual Box (this should be available on ARC computers)

Notice: If you are running VirtualBox on Mac OS X. You restart Virtual Box by running the command below
<pre><code>sudo /Library/StartupItems/VirtualBox/VirtualBox restart
</code></pre>

Clone git directory and cd into puppet-manifest folder
<pre><code>git clone https://github.com/suns3t/puppet-manifest.git
cd puppet-manifest
</code></pre>
Run Vagrant and start provisioning (this step will take about one hour)
<pre><code>vagrant up --provision
</code></pre>

##Usage
To make sure it work, go to your browser and type 10.0.0.10

To ssh into Vagrant machine, type
<pre><code>vagrant ssh</code></pre>

Vagrant machine does not have root password, so to become sudoer, type
<pre><code>sudo su</code></pre>

If Apache is not running, restart it
<pre><code>service httpd restart</code></pre>
##Contact
Contact information will go here!

