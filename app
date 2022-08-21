runtime: python39
instance_class: F1

automatic_scaling:
  min_instances: 0
  max_instances: 1

handlers:
- url: /(.+)/
  static_files: www/\1/index.html
  upload: www/(.+)/index.html

- url: /
  static_files: www/index.html
  upload: www/index.html

- url: /([^\.]+)([^/])
  static_files: www/\1\2/index.html
  upload: www/(.+)

- url: /(.+)
  static_files: www/\1
  upload: www/(.+)
