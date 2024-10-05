defmodule ElApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :el_app,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {ElApp.Application, []}
    ]
  end

  defp deps do
    [
      {:lib_pkg, git: "https://github.com/jans-forks/elixir_lib", tag: "v0.1.0"},
      {:git_lib_pkg, git: "https://github.com/jans-forks/elixir_lib", tag: "v0.2.0"},
      {:ref_lib_pkg, git: "https://github.com/jans-forks/elixir_lib", ref: "4888c25b27e47369296ebd66502a3d3ec6e955db"},
      {:ref_lib_tag, git: "https://github.com/jans-forks/elixir_lib", ref: "v0.1.0"},
    ]
  end
end
