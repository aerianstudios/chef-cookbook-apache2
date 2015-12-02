bash "disable_default_vhosts" do
  code <<-EOS
    a2dissite *default*
    apachectl graceful
  EOS
end