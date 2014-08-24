Workstation
===========

My personal OSX workstation setup script. Feel free to take it and customize it for yourself.

## How does it work?

It first downloads [Chef Development Kit](http://downloads.getchef.com/chef-dk/) to run `chef-solo` on predefined node configuration with curated set of Chef cookbooks.

The magic commandline that starts bells and whistles on clean machine is:
```
git clone https://github.com/pawelpacana/workstation
cd workstation
./bootstrap
```

## How others make it work?


* [Managing My Workstations With Chef](http://jtimberman.housepub.org/blog/2011/04/03/managing-my-workstations-with-chef/)
* [lunar-station](https://github.com/LunarLogicPolska/lunar-station)
* [pivotal-sprout](https://github.com/pivotal-sprout/)
* [boxen](https://boxen.github.com/)
