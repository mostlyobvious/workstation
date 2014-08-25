Workstation
===========

My personal OSX workstation setup script. Feel free to take it and customize it for yourself.

## How does it work?

It first downloads [Chef Development Kit](http://downloads.getchef.com/chef-dk/) to run `chef-solo` on predefined node configuration with curated set of Chef cookbooks.

The magic commandline that starts bells and whistles on clean machine is:
```
./script/bootstrap
```

It expects that configuration for your `hostname` is in `nodes/hostname.json` and you have cookbooks in `cookbooks/` or `Berksfile`.
To set hostname to desired one you may use `sudo hostname -s my_desired_host_name`.

## How others make it work?

* [Managing My Workstations With Chef](http://jtimberman.housepub.org/blog/2011/04/03/managing-my-workstations-with-chef/)
* [lunar-station](https://github.com/LunarLogicPolska/lunar-station)
* [pivotal-sprout](https://github.com/pivotal-sprout/)
* [boxen](https://boxen.github.com/)
