# TAMPILAN DATA MAHASISWA
![running](https://user-images.githubusercontent.com/58089002/120794349-4e88ff00-c562-11eb-947b-24791e73830f.png)
![Dashboard](https://user-images.githubusercontent.com/58089002/120781480-4f666480-c553-11eb-8025-51d4902d4918.png)

# OUTPUT PROGRAM
| No. | Nama Fitur | Hasil |
| - | - | - |
| 1. | Tambah | ![tambah-ANIMATION](https://user-images.githubusercontent.com/58089002/120795396-9c523700-c563-11eb-914e-abb6861db98a.gif)  |
| 2. | Edit | ![edit2-ANIMATION](https://user-images.githubusercontent.com/58089002/120795400-9e1bfa80-c563-11eb-9d63-59df46e3c51d.gif) |
| 3. | Clear | ![clear](https://user-images.githubusercontent.com/58089002/120795344-8b092a80-c563-11eb-9cb7-7c0b4f176cfa.png) |
| 4. | Hapus | ![hapus](https://user-images.githubusercontent.com/58089002/120795327-880e3a00-c563-11eb-95bb-627416549dcc.png) |

# KODE TAMBAHAN
  A. Tambah
    
    def addItemButtonClick(self):
        nama = self.lineEditNama.text()
        nim = self.lineEditNIM.text()
        jurusan = self.lineEditJurusan.text()
        noTelp = self.lineEditNoTelp.text()
        self.textEdit.setText("NIM\t: " + nim +
                            "\nNama\t: " + nama +
                             "\nJurusan\t: " + jurusan +
                             "\nNo. Telp\t: " + noTelp)
        self.tambah.clicked.connect(self.lineEditNIM.clear)
        self.tambah.clicked.connect(self.lineEditNama.clear)
        self.tambah.clicked.connect(self.lineEditJurusan.clear)
        self.tambah.clicked.connect(self.lineEditNoTelp.clear)
        
  B. Edit
  
     def editItemButtonClick(self):
        nama = self.lineEditNama.text()
        nim = self.lineEditNIM.text()
        jurusan = self.lineEditJurusan.text()
        noTelp = self.lineEditNoTelp.text()
        self.textEdit.setText("NIM\t: " + nim +
                            "\nNama\t: " + nama +
                             "\nJurusan\t: " + jurusan +
                             "\nNo. Telp\t: " + noTelp)
        
  C. Clear
  
     self.clear.clicked.connect(self.lineEditNIM.clear)
        self.clear.clicked.connect(self.lineEditNama.clear)
        self.clear.clicked.connect(self.lineEditJurusan.clear)
        self.clear.clicked.connect(self.lineEditNoTelp.clear)
        
  D. Hapus
  
     self.hapus.clicked.connect(self.textEdit.clear)
