# Try...except...
try:
  a = int(input("Masukkan nilai A\t: "))
  b = int(input("Masukkan nilai B\t: "))
  c = a / b
  print(f"{a} / {b} = {c}")

except ZeroDivisionError as e:
  print("Error\t: Tidak boleh bagi 0")

# Try...except...finally
f = ""

try:
  f = open("Contoh.txt", "r")
  lines = f.readlines()
  for line in lines:
    print(line, end = "\n")  

except IOError as e:
  print("Error\t: File hilang")

finally:
  if f:
    f.close()