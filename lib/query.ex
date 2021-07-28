defmodule Example.UseAYeSQL do
  defmacro __using__(_) do
    quote do
      use AyeSQL, runner: AyeSQL.Runner.Postgrex, conn: :db
    end
  end
end

defmodule Example.Query.Select do
  use Example.UseAYeSQL

  defqueries("query/select.sql")
end

defmodule Example.Query.Example do
  use Example.UseAYeSQL

  defqueries("query/example.sql")
end
