[![Docker Pull Count](https://img.shields.io/docker/pulls/bitwrk/jellyfin-rffmpeg)](https://hub.docker.com/r/bitwrk/jellyfin-rffmpeg)

[![License](https://img.shields.io/github/license/Shadowghost/jellyfin-rffmpeg)](https://github.com/Shadowghost/jellyfin-rffmpeg/blob/master/LICENSE)
[![Issues](https://img.shields.io/github/issues/Shadowghost/jellyfin-rffmpeg)](https://github.com/Shadowghost/jellyfin-rffmpeg/issues)
[![Master Commit RSS Feed](https://img.shields.io/badge/rss-commits-ffa500?logo=rss)](https://github.com/Shadowghost/jellyfin-rffmpeg/commits/master.atom)

## Jellyfin with rFFmpeg
This images extend the official [Jellyfin](https://jellyfin.org) [docker images](https://hub.docker.com/r/jellyfin/jellyfin) with [rFFmpeg](https://github.com/joshuaboniface/rffmpeg) support.

The rFFmpeg binary is located at `/usr/local/bin/rffmpeg` and accessible to Jellyfin as `/usr/local/bin/ffmpeg`.

The stock configuration should work for most users, but you can overwrite the default configuration by mounting an alternative one to `/etc/rffmpeg/rffmpeg.yml`.

To execute `rffmpeg` commands against the container, for instance to add hosts or view status, use:

```
docker exec -it jellyfin rffmpeg <command>
```

Be sure to run `rffmpeg init` and `rffmpeg add` first before using it.

For more information on rFFmpeg and configuration instructions take a look at the [project's repository](https://github.com/joshuaboniface/rffmpeg)!
