# docker-livestream-facebook
Docker image for a rtmps livestream to facebook

#### Build status:
[![Build Status](https://travis-ci.org/andreaskasper/docker-livestream-facebook.svg)](https://travis-ci.org/andreaskasper/docker-livestream-facebook)
[![Build Status](https://img.shields.io/docker/cloud/automated/andreaskasper/livestream_facebook.svg)](https://hub.docker.com/r/andreaskasper/livestream_facebook)
[![Build Status](https://img.shields.io/docker/cloud/build/andreaskasper/livestream_facebook.svg)](https://hub.docker.com/r/andreaskasper/livestream_facebook)
#### Bugs & Issues:
![Github Issues](https://img.shields.io/github/issues/andreaskasper/docker-livestream-facebook.svg)

![Code Languages](https://img.shields.io/github/languages/top/andreaskasper/docker-livestream-facebook.svg)

### Environment Parameters
| Parameter     | Description   |
| ------------- |:-------------:|
| INPUT | The file or URL that should be streamed (default: test-video of Big Bunny) |
| FACEBOOK_KEY | Your facebook stream-key for your rtmps stream |

### Examples
```sh
docker run -d --env INPUT=rtmp://example.com:1935/live/app --env FACEBOOK_KEY={your facebook key} andreaskasper/livestream_facebook
```

### Steps
- [x] Build a base test image to test this build process (Travis/Docker)
- [ ] Build tests
- [ ] Gnomes
- [ ] Profit

### support the projects :hammer_and_wrench:
* [![donate via Patreon](https://img.shields.io/badge/Donate-Patreon-green.svg)](https://www.patreon.com/AndreasKasper)
* [![donate via PayPal](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/AndreasKasper)
