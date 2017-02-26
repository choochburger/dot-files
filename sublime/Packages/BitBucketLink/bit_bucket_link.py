import sublime
import sublime_plugin

from subprocess import call

class BitBucketLinkCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        file_path = self.view.file_name().split('nutonian/')[1]
        file_name = file_path.split('/')[-1]
        row, col = self.view.rowcol(self.view.sel()[0].begin())
        url = 'https://bitbucket.org/nutonian/source-code/src/{branch}/{file_path}?at={branch}&fileviewer=file-view-default#{file_name}-{line_number}'.format(
            branch='modular_homes',
            file_path=file_path,
            file_name=file_name,
            line_number=row + 1
        )
        call(['open', url])
