from ranger.api.commands import *
import os

class code(Command):
    def execute(self):
        if not self.arg(1):
            self.fm.notify('Wrong number of arguments', bad = True)
            return

        self.fm.run(['code', self.arg(1)]);

