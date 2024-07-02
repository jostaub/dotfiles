-- Detect Ansible filetype.
vim.filetype.add {
  pattern = {
    ['.*/playbooks/.*%.yml'] = 'yaml.ansible',
    ['.*/playbooks/.*%.yaml'] = 'yaml.ansible',
    ['.*/tasks/.*%.yml'] = 'yaml.ansible',
    ['.*/tasks/.*%.yaml'] = 'yaml.ansible',
    ['.*/handlers/.*%.yml'] = 'yaml.ansible',
    ['.*/handlers/.*%.yaml'] = 'yaml.ansible',
    ['.*/ansible/.*%.yaml'] = 'yaml.ansible',
    ['.*/ansible/.*%.yml'] = 'yaml.ansible',
    ['.*%.conf.j2'] = 'conf.jinja',
    ['.*%.j2'] = 'jinja',
  },
}
