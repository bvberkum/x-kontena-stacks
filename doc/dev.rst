
- Manual docs <https://www.kontena.io/docs/tools/stack-registry.html>

  Summary::

    make login
    make search:<stack>
    make show:<stack>
    make push:<stack>
    make pull-official:<stack>


- Setup kontena cloud nodes <https://www.kontena.io/docs/using-kontena/install-nodes/#adding-kontena-nodes-manually>

  Summary:
    - install docker.io, and kontena-agent
    - login with master, setup etc (preferably automated, e.g. using ``apt-reconfigure kontena-agent``).


- Initial cloud setup.

  ::

    kontena stack install kontena/ingress-lb
    kontena stack install bvberkum/drone-github
    # or: kontena stack install kontena/drone-gitlab


  Use/clear vault to change persisted settings::

    kontena vault rm <key>
    kontena vault write <key> <value>

