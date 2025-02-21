defmodule ExDocDash.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_doc_dash,
      version: "0.4.0",
      elixir: "~> 1.8",
      deps: deps(),
      description: description(),
      package: package(),
      name: "ExDocDash",
      docs: [extras: ["README.md"]],
      source_url: "https://github.com/JonGretar/ExDocDash",
      homepage_url: "http://hexdocs.pm/ex_doc_dash"
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.21.2"},
			{:credo, "~> 1.1.0", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    Formatter for ExDoc to generate docset documentation for use in Dash.app.
    """
  end

  defp package do
    [
      maintainers: ["Jón Grétar Borgþórsson"],
      licenses: ["MIT"],
      links: %{
        "Dash.app": "http://kapeli.com/dash",
        "GitHub": "https://github.com/JonGretar/ExDocDash",
        "Issues": "https://github.com/JonGretar/ExDocDash/issues"
      }
    ]
  end
end
