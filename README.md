# Workstation

Workstation is chef-solo setup for machines I work on. Inspired by [Lunar Station][lunar] and [Joshua Timberman][jtimberman] setup.

[lunar]: https://github.com/LunarLogicPolska/lunar-station
[jtimberman]: http://jtimberman.housepub.org/blog/2011/04/03/managing-my-workstations-with-chef/

## Usage

Make yourself a node in `nodes/NAME.json` first, then:

    ./bootstrap.sh NAME


## OSX prerequirements

[XCode][apple]. [Command Line Tools][apple] are simply not sufficient for some packages or just troublesome enough to invest time troubleshootong rather than additional gigabytes of storage.


[apple]: https://developer.apple.com/downloads/index.action

