git_clone: true

app_user:
  username: "carl"

app_name: "carl-rosemy"
apps_directory: "/home/{{ app_user.username }}/apps/"
app_directory: "/home/{{ app_user.username }}/apps/{{ app_name }}"
src_directory: "{{ app_directory }}/src"
venv_directory: "{{ src_directory }}/env"

