-- Detect Ansible filetype.
vim.filetype.add {
  pattern = {
    ['.*/playbooks/.*%.yml'] = 'yaml.ansible',
    ['.*/playbooks/.*%.yaml'] = 'yaml.ansible',
    ['.*/tasks/.*%.yml'] = 'yaml.ansible',
    ['.*/tasks/.*%.yaml'] = 'yaml.ansible',
    ['.*/handlers/.*%.yml'] = 'yaml.ansible',
    ['.*/handlers/.*%.yaml'] = 'yaml.ansible',
  },
}
