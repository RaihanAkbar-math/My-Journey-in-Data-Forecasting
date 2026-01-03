# Perbandingan Kinerja Model ARIMA dan Holt-Winters dalam Memprediksi Nilai Ekspor Indonesia

Repository ini berisi kode dan hasil penelitian mengenai prediksi nilai ekspor Indonesia menggunakan metode deret waktu (time series) klasik, yaitu **ARIMA** dan **Holt-Winters**.

Penelitian ini bertujuan untuk membandingkan akurasi kedua model tersebut guna mendapatkan model terbaik untuk memproyeksikan nilai ekspor Indonesia di masa depan.

## 📄 Abstrak

Nilai ekspor Indonesia mengalami fluktuasi yang signifikan dalam beberapa tahun terakhir. Penelitian ini membandingkan kinerja model **ARIMA (Autoregressive Integrated Moving Average)** dan **Holt-Winters (Exponential Smoothing)** untuk memprediksi nilai ekspor.

Berdasarkan evaluasi menggunakan **Mean Absolute Percentage Error (MAPE)**, penelitian ini menemukan bahwa model **Holt-Winters Additive** memberikan kinerja yang lebih baik dibandingkan ARIMA untuk data ekspor periode ini.

## 👥 Penulis

* **R. Akbar** - *IPB University*
* **I W. Mangku** - *IPB University*
* **B. P. Silalahi** - *IPB University*

## 📊 Dataset

Data yang digunakan dalam penelitian ini bersumber dari **Badan Pusat Statistik (BPS)**.

* **Komoditas:** Nilai Ekspor Indonesia (Total)
* **Periode Data:** Januari 2013 – Desember 2023
* **Jumlah Data:** 132 data bulanan
* **Pembagian Data:**
    * *Training:* 119 data (Jan 2013 - Nov 2022)
    * *Testing:* 13 data (Des 2022 - Des 2023)

> **Catatan:** Data mentah dapat diakses melalui laman resmi [BPS](https://www.bps.go.id/id).

## 🛠️ Metodologi

Penelitian ini menggunakan dua pendekatan statistik utama:

1.  **ARIMA (Autoregressive Integrated Moving Average)**
    * Meliputi tahap uji stasioneritas (ADF Test), differencing, identifikasi orde (ACF/PACF/EACF), estimasi parameter, dan uji diagnostik residual.
    * Model terbaik yang diperoleh: **ARIMA(3,1,2)**.

2.  **Holt-Winters (Exponential Smoothing)**
    * Menggunakan tiga parameter smoothing: *alpha* (level), *beta* (trend), dan *gamma* (seasonal).
    * Optimasi parameter dilakukan menggunakan **Grid Search**.
    * Model yang dibandingkan: *Additive* vs *Multiplicative*.
    * Model terbaik yang diperoleh: **Holt-Winters Additive**.

## 📈 Hasil Evaluasi

Kinerja model diukur menggunakan MAPE (*Mean Absolute Percentage Error*). Berikut adalah perbandingan hasil akurasi pada data testing:

| Model | Spesifikasi | MAPE (%) |
| :--- | :--- | :--- |
| **ARIMA** | ARIMA(3,1,2) | 11.766% |
| **Holt-Winters** | **Additive (Best Model)** | **5.131%** |

Model **Holt-Winters Additive** terpilih sebagai model terbaik dan digunakan untuk memprediksi nilai ekspor Indonesia tahun 2024.

## 💻 Instalasi & Penggunaan

Analisis ini dilakukan menggunakan bahasa pemrograman **R** dengan **RStudio**.

### Prasyarat (Libraries)
Pastikan Anda telah menginstal paket R berikut:

```r
install.packages("forecast")
install.packages("tseries")
install.packages("ggplot2")
install.packages("readxl")

### Grafik Prediksi
![Perbandingan Prediksi Kedua Model](<img width="616" height="353" alt="image" src="https://github.com/user-attachments/assets/e2df6926-7d1b-40f6-aacc-534804fbecd8" />)
