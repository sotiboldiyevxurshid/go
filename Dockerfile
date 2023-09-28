# Boshlanish nuqtasi sifatida golang:1.21 asosiy tasviridan foydalaning

FROM golang:1.21

# Konteyner ichidagi working katalogni /app ga o'rnating

WORKDIR /app

# Joriy katalogdagi barcha fayllarni working katalogga nusxalash

COPY . .

# Go ilovasini yarating va ikkilik faylni "main" sifatida chiqaring

RUN go build -o main .


# Konteyner ishga tushganda "main" ikkilik faylni ishga tushirish uchun standart buyruqni o'rnating

CMD ["./main"]






