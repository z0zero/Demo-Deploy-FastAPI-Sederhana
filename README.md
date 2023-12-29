# Demo-Deploy-FastAPI-Sederhana

## Deskripsi

Proyek ini merupakan implementasi sederhana dari API menggunakan FastAPI untuk membuat prediksi menggunakan model machine learning yang telah dilatih sebelumnya. API menerima data input melalui endpoint POST dan mengembalikan prediksi.

## Fitur

- Endpoint POST untuk menerima data dan mengembalikan prediksi.
- Menggunakan model machine learning yang dilatih sebelumnya.
- Containerisasi dengan Docker untuk kemudahan deployment.

## Persyaratan

- Python 3.8+
- FastAPI
- Uvicorn
- Pandas
- Scikit-Learn (jika model menggunakan library ini)

## Instalasi

1. Clone repositori ini:
   ```
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

2. (Opsional) Buat dan aktifkan lingkungan virtual:
   ```
   python -m venv venv
   source venv/bin/activate  # Untuk Unix atau MacOS
   venv\Scripts\activate     # Untuk Windows
   ```

3. Instal dependensi:
   ```
   pip install -r requirements.txt
   ```

## Penggunaan

### Lokal

Untuk menjalankan server API di lokal:

```
uvicorn mlapi:app --reload
```

API kemudian dapat diakses melalui `http://localhost:8000`.

### Dengan Docker

Untuk menjalankan API dalam container Docker:

1. Bangun image Docker:
   ```
   docker build -t fastapi-ml-app .
   ```

2. Jalankan container:
   ```
   docker run -d --name fastapi-ml-container -p 8000:8000 fastapi-ml-app
   ```

API kemudian dapat diakses melalui `http://localhost:8000`.

## Contoh Penggunaan

Untuk mengirim request ke API:

```
POST / HTTP/1.1
Host: localhost:8000
Content-Type: application/json

{
  "YearsAtCompany":1,
  "EmployeeSatisfaction":0.01,
  "Position": "Non-Manager",
  "Salary":4.0 
}
```

## Kontribusi

Kontribusi untuk proyek ini sangat diperbolehkan. Jika Anda ingin berkontribusi, silakan fork repositori ini, buat perubahan Anda, dan kirimkan pull request.
