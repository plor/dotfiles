return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  config = function()
    require('orgmode').setup {
      org_agenda_files = '~/.notes/**/*',
      org_default_notes_file = '~/.notes/refile.org',
      org_todo_keywords = { 'TODO', 'ONDECK', 'INPROGRESS', '|', 'DONE' },
    }
  end,
}
