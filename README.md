[![License: Apache 2.0](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0.html)
[![Build Status](https://travis-ci.org/LasLabs/docker-alpine-red-october.svg?branch=master)](https://travis-ci.org/LasLabs/docker-alpine-red-october)

[![](https://images.microbadger.com/badges/image/laslabs/alpine-red-october.svg)](https://microbadger.com/images/laslabs/alpine-red-october "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/laslabs/alpine-red-october.svg)](https://microbadger.com/images/laslabs/alpine-red-october "Get your own version badge on microbadger.com")

Docker - Alpine Red October
===========================

This image provides Cloudflare Red October using an Alpine Linux base.

Configuration
=============

*

Usage
=====

* 

Build Arguments
===============

The following build arguments are available for customization:


| Name | Default | Description |
|------|---------|-------------|


Environment Variables
=====================

The following environment variables are available for your configuration
pleasure:

| Name | Default | Description |
|------|---------|-------------|
| RO_CERTPASSWD | password | Password for the Red October certificate |
| RO_COMMONNAME | localhost | Common Name for the server |
| RO_DATA | /var/lib/redoctober/data | Where to store all of the data |

Known Issues / Roadmap
======================

Bug Tracker
===========

Bugs are tracked on [GitHub Issues](https://github.com/LasLabs/docker-alpine-red-october/issues).
In case of trouble, please check there to see if your issue has already been reported.
If you spotted it first, help us smash it by providing detailed and welcomed feedback.

Credits
=======

Contributors
------------

* Dave Lasley <dave@laslabs.com>

Maintainer
----------

[![LasLabs Inc.](https://laslabs.com/logo.png)](https://laslabs.com)

This module is maintained by [LasLabs Inc.](https://laslabs.com)

* https://github.com/LasLabs/docker-alpine-red-october
