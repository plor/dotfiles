return {
	"nvim-orgmode/orgmode",
	event = "VeryLazy",
	config = function()
		require("orgmode").setup({
			org_agenda_files = "~/.notes/**/*",
			org_default_notes_file = "~/.notes/refile.org",
			org_todo_keywords = { "TODO", "ONDECK", "INPROGRESS", "|", "DONE" },
			calendar_week_start_day = 0,
			org_capture_templates = {
				t = {
					description = "Task",
					template = "* TODO %?\n %u",
					target = "todo.org",
				},
				e = {
					description = "Event",
					subtemplates = {
						o = {
							description = "One time",
							template = "** %^{event|Untited} %^{One-time Event}T",
							target = "calendar/%<%Y%m>.org",
							headline = "one-time",
						},
						r = {
							description = "Recurring",
							template = "** %^{event|Untitled} %^{Recurring Event}T",
							target = "calendar/%<%Y%m>.org",
							headline = "recurring",
						},
					},
				},
				n = {
					description = "Note",
					template = "* %?",
					target = "refile.org",
				},
				c = {
					description = "Contact",
					template = "* %?",
					target = "contacts.org",
				},
				j = {
					description = "Journal/Daily",
					template = "* %?",
					target = "dailies/%<%Y-%m-%d>.org",
				},
				g = {
					description = "Grocery List",
					template = "\t %?",
					target = "grocery_list.org",
					headline = "need",
				},
				Q = {
					description = "Quote",
					template = "* %? :%^{tag|tag}:",
					target = "quotes/%^{short|refile}.org",
				},
			},
		})
	end,
}
