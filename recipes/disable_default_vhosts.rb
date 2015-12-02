bash "disable_default_vhosts" do
  code <<-EOS
    2dissite *default*
    apachectl graceful
  EOS
end