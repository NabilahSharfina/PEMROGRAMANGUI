# OUTPUT PROGRAM
![Error1-ANIMATION](https://user-images.githubusercontent.com/58089002/120767316-4bcbe100-c545-11eb-82ac-3a4826bab3dc.gif)
![Revisi1-ANIMATION](https://user-images.githubusercontent.com/58089002/120767338-50909500-c545-11eb-8483-d62796b529e4.gif)
![Click2-ANIMATION](https://user-images.githubusercontent.com/58089002/120767334-4ff7fe80-c545-11eb-9a70-88891fb7eacd.gif)

# DESKRIPSI
  A. Membuat Tombol Button
  
     app = QApplication([])
     button = QPushButton('Click')
  B. Membuat Message Box
  
     def on_button_clicked():
      alert = QMessageBox()
      alert.setText('You clicked the button!')
      alert.exec_()
  C. Memberi Fungsi Connect pada tombol yang diklik
  
    button.clicked.connect(on_button_clicked)
    button.show()
    app.exec_();
