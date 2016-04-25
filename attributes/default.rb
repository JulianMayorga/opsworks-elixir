default[:opsworks_elixir] = {
  setup: {
    package: {
      url:  "http://packages.erlang-solutions.com/",
      file: "erlang-solutions_1.0_all.deb"
    },
    install: {
      packages: [
        "esl-erlang",
        "elixir"
      ]
    }
  }
}
