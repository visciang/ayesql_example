defmodule Example do
  use Application
  alias Example.Query

  @db_conn :db

  def start(_type, _args) do
    postgrex_conf =
      Application.get_env(:example, :db)
      |> Keyword.put(:name, @db_conn)

    children = [{Postgrex, postgrex_conf}]

    opts = [strategy: :one_for_one, name: App.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def example do
    Query.Select.select_one!([])

    Query.Example.create_table!([])
    Query.Example.insert!(column_a: "X", column_b: ~D/2020-01-30/)
    Query.Example.insert!(column_a: "Y", column_b: ~D/2021-01-30/)
    Query.Example.all!(_order_by: :descending)
  end
end
