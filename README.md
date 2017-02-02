# Devious - An awesome Vagrant LEMP stack Ansible for Software Engineers

Vagrant Ansible creates a Vagrant installation with the following features:

- Debian 8 (Jessie)
- VirtualBox Guest Additions (optional installation feature)
- System essential packages (ViM, curl, etc)
- Nginx
- PHP 7.0
- Git
- Composer
- NodeJs 7
- Ruby
- MySql-Server
- Memcached

Development packages also includes:

- SASS
- Grunt CLI
- Bower

\* Setup with install the latest module version

## Requirements

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](http://www.vagrantup.com/downloads.html)
- [Vagrant Hostupdater](https://github.com/cogitatio/vagrant-hostsupdater)
- [Vagrant VirtualBox Guest Additions](https://github.com/dotless-de/vagrant-vbguest)
- [Ansible](http://docs.ansible.com/intro_installation.html)

## Vagrant Requirements

Before running `vagrant up`, please make sure that you've installed the required Vagrant plugins:

- [Vagrant Hostupdater](https://github.com/cogitatio/vagrant-hostsupdater)
- [Vagrant VirtualBox Guest Additions](https://github.com/dotless-de/vagrant-vbguest)

### Vagrant::Hostupdater

```
vagrant plugin install vagrant-hostsupdater
```

### Vagrant::VirtualBox Guest Additions

```
vagrant plugin install vagrant-vbguest
```

In case, somehow, you don't do this, or you just don't require this on you machine's Vagrant. You can always enabled `vbox_guest_additions` role on `development.yml` file. But, you have to make sure that you had the right kernal and VirtualBox version added to `roles/vbox_guest_additions/defaults/main.yml`.

## Repository Projects

If you had a project host on either Github or Bitbucket, run this bash script first to set up your repository credentials.

```
bash scripts/project_repo_credentials.sh
```

## Get Started

Run...

```
vagrant up
```

And wait... there will be a prompt asking for your machine admin/root password, just enter them. This will allow Hostupdater to do it's job on the `/etc/hosts` file.

... and you're done!

You local development machine address is [http://localhost.devio.us](http://localhost.devio.us).

## Contributors

- [Syam Hasan](https://github.com/syamhasan/)