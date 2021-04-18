# Menggunakan variabel
angka = 10

# Param 1: max
for i in range(angka):
  print("Angka ke\t: ")
  print(i)

# Param 2: min, max (sifat increment)
for i in range(angka, 20):
  print("Angka ke\t: ")
  print(i)

# Param 3: min, max, lompatan + (sifat increment)
# Param 3: min, max, lompatan - (sifat decrement)
for i in range(angka, 1, -1):
  print("Angka ke\t: ")
  print(i)

# Array
array = [1,2,3,4]

for i in array:
  print(i, end = "")