import sys
from Nama import *
from PyQt5.QtCore import *
from PyQt5.QtWidgets import *

class DemoNama(QDialog):
    def __init__(self,parent = None):
        QDialog.__init__(self,parent)
        self.ui = Ui_Form()
        self.ui.setupUi(self)
        self.ui.hallo.clicked.connect(self.halloClicked)

    def halloClicked(self):
        QMessageBox.information(self, 'Demo Qt Designer', 'Hello %s, apa kabar?' % self.ui.nameEdit.text())

if __name__ == "__main__":
    a = QApplication(sys.argv)
    form = DemoNama()
    form.show()
    a.exec_()