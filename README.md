# agenda-html

Export an HTML and/or text and/or iCal version of org-agenda without opening Emacs.

It requires `emacs`, `git` and `tmux` to be installed on your system.

I made this to run from my crontab every ~15 minutes in order to have my home page in firefox and chrome as an up-to-date version of my org-agenda.

The reason I have to run Emacs inside of `tmux` is that Emacs refuses to load themes without having a window, so it's required if you want colors in your export.

## Configuration

Modify `org-agenda-files` in `config.el` to contain the paths to the org files you want to include in your agenda.

Set `agenda-html-file` with the desired location for the HTML output, or `nil` for no HTML output.

Set `agenda-text-file` with the desired location for the text output, or `nil` for no text output.

Set `agenda-ics-file` with the desired location for the iCal output, or `nil` for no iCal export.

If `agenda-arrows` is non-`nil`, arrows will be added to the agenda, pointing to the current date's entry.

## Customization

Other `org` and `org-agenda` customizations can be placed in `config.el` as well.

One that I find particularly useful us `(setq org-agenda-span 'fortnight)`, which shows two weeks at a time instead of one.

I also use `(setq org-agenda-hide-tags-regexp "noexport")` to hide the `:noexport:` tag which I have on some of my headings.

Setting `(setq org-agenda-start-on-weekday nil)` may also be preferable for some, as it makes it so that the current date is at the top of the agenda instead of the first day of the week.

Including some commands like `(set-time-zone-rule "EST")` can also be useful if the machine's time is in UTC and you want the agenda time to match your local time zone.

If you want to load a specific theme, say `wombat` for the export, you can add `(load-theme 'wombat 'noconfirm)`.

## Running

To run the script, clone the repository, modify the config file and run `agenda-html.sh`

If running this from a crontab, make sure the environment is set up correctly, as cron often runs jobs with a minimal `$PATH`.

## Extensions

[This](https://chrome.google.com/webstore/detail/custom-new-tab-url/mmjbdbjnoablegbkcklggeknkfcjkjia) extension can be used to set the new tab page in Chrome, and [this](https://addons.mozilla.org/en-US/firefox/addon/new-tab-override/) one can be used for Firefox.

## Example

![Example agenda export](example.png)
