# debian-sid

## SCOPE

Convert the stable build of Debian 9 (Stretch) to Sid.

## Requirements

- Debian 9.x

## Dependencies

- [apt](https://supermarket.chef.io/cookbooks/apt)
## Usage

- Run this against a Debian 9.x installation.
- When completed run `apt-get dist-upgrade -y` and answer any issues.
- `reboot` when completed.
- Winning.

**NOTE**: do to the constant moving target of Sid, there is cronjob that does
a `apt-get update` every 6 hours. You will be required to do the
`apt-get dist-upgrade` at your own cadence.

I have also added [weechat](https://weechat.org/) as a package that will
be installed. If you are using this and need help, you should run the
following commands so you have access to irc.debian.org.

```ini
/server add debian irc.debian.org
/connect debian
/nick <yournick>
/join #debian-next
/join #debian
```

## Testing

The default `.kitchen.yml` has the `debian-9` by default, and can be tested
via `kitchen test` with vagrant.

For more details look at the [TESTING.md](./TESTING.md).

## License & Authors

If you would like to see the detailed LICENCE click [here](./LICENCE).

- Author:: JJ Asghar <jjasghar@gmail.com>

```text
Copyright:: JJ Asghar 2017

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
