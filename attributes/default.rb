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

default['nodejs']['version'] = '5.0.0'

# Override the repo
case node['platform_family']
when 'debian'
  default['nodejs']['repo']      = 'https://deb.nodesource.com/node_0.12'
end

default["nodebin"]["location"] = '/usr/bin/nodejs'
default["nodebin"]["opsworks_location"] = '/usr/local/bin/node'
