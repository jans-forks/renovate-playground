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

  # defp deps do
  #   [
  #     {:lib_pkg, git: "https://github.com/jans-forks/elixir_lib", tag: "v0.1.0", app: false},
  #     {:oban_pro, "~> 0.11", repo: "oban"},
  #   ]
  # end

  defp deps do
    [
      {:lib_pkg, git: "https://github.com/jans-forks/elixir_lib", tag: "v0.3.0", app: false},
      {:git_lib_pkg, git: "https://github.com/jans-forks/elixir_lib", tag: "v0.3.0", app: false},
      {:ref_lib_pkg, git: "https://github.com/jans-forks/elixir_lib", ref: "83b72d4940b13cc68e70a32aa14eb624b29b880a",app: false},
      {:ref_lib_tag, git: "https://github.com/jans-forks/elixir_lib", ref: "83b72d4940b13cc68e70a32aa14eb624b29b880a", app: false},
      {:ref_lib_branch, git: "https://github.com/jans-forks/elixir_lib", ref: "83b72d4940b13cc68e70a32aa14eb624b29b880a", app: false}
    ]
  end
end
