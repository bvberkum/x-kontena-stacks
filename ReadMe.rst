x-kontena-stacks
================
Testbed for custom kontena.io stack definitions.

- `Dev docs <doc/dev.rst>`__


drone-github
  :version: 0.0.3

  server:
    image: drone/drone:0.7
  agent:
    image: drone/drone:0.7

  Based on kontena/drone-github but with updated agent env\ [#]_::

      - DOCKER_API_VERSION=1.24


----

.. [#] `client is newer than server (client API version: 1.26, server API version: 1.24) <https://github.com/drone/drone/issues/2048>`__
