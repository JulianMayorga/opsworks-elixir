bash 'build' do
  cwd ::File.dirname(src_filepath)
  code <<-EOH
    mix deps.get --only prod
    MIX_ENV=prod mix compile
    MIX_ENV=prod mix phoenix.digest
    MIX_ENV=prod mix ecto.migrate
    PORT=4001 MIX_ENV=prod mix phoenix.server
    EOH
end
