# ayesql example

No ecto, just postgrex, alias **parla come mangi**

    $ docker run --rm -e POSTGRES_PASSWORD=postgres -p 5432:5432 postgres:alpine

    $ iex -S mix
    iex(1)> Example.example()