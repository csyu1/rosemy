git_clone: true

app_user:
  username: "carl"

app_name: "carl-rosemy"
apps_directory: "/home/{{ app_user.username }}/apps/"
app_directory: "/home/{{ app_user.username }}/apps/{{ app_name }}"
src_directory: "{{ app_directory }}/src"
venv_directory: "{{ src_directory }}/env"

site_url: rosemy.carlearvin.com

nginx:
  config_name: rosemy.carlearvin.com
  server_name: rosemy.carlearvin.com

log_directory: '/var/log/{{app_user.username}}/{{ app_name }}'

static_dir: "{{ src_directory }}/wedding/static"