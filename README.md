# 🚀 Panel WA Badak (Enc Version)
Panel WhatsApp automation berbasis Node.js dengan fitur blast, multi session, dan auto setup via script shell.

---

## 📌 Fitur Utama
- ✅ Multi session WhatsApp
- ✅ Script blast otomatis
- ✅ File sudah di-encode (lebih aman)
- ✅ Auto install via script `.sh`
- ✅ Support Termux / VPS / Linux
- ✅ Bisa dikembangkan ke panel / API

---

## 📂 Struktur File
```
Panel-wa-badak/
├── Blast_enc.js     # Script blast WhatsApp
├── Wa_enc.js        # Core koneksi WhatsApp
├── New.sh           # Script installer & runner
```

---

## ⚙️ Persyaratan
Pastikan device kamu sudah memiliki:

- Node.js (disarankan v18+)
- Git
- Bash / Termux / Linux

---

## 📥 Cara Install & Jalankan (AUTO)

### 1. Clone Repo
```bash
git clone https://github.com/AciLNiBoss/Panel-wa-badak.git
cd Panel-wa-badak
```

---

### 2. Jalankan Script Installer
```bash
bash New.sh
```

Script ini biasanya akan:
- Install dependency otomatis
- Setup environment
- Menjalankan bot

---

## ▶️ Cara Manual (Jika Tidak Pakai Script)

### Install Module
```bash
npm install
```

---

### Jalankan Bot WA
```bash
node Wa_enc.js
```

---

### Jalankan Blast
```bash
node Blast_enc.js
```

---

## 🔑 Cara Login WhatsApp

Saat pertama kali menjalankan:

- Akan muncul QR Code / kode pairing
- Scan melalui WhatsApp:
  - Buka WhatsApp
  - Linked Devices
  - Tambahkan perangkat

Setelah login:
- Session akan tersimpan otomatis
- Tidak perlu scan ulang

---

## 📤 Cara Blast (Kirim Pesan Massal)

Biasanya di dalam `Blast_enc.js` sudah tersedia:
- List nomor
- Pesan otomatis

Jika ingin edit:
- Buka file `Blast_enc.js`
- Ubah bagian:
```js
const numbers = ["628xxx", "628xxx"]
const message = "Pesan kamu"
```

---

## 🌐 Jalankan di Termux

```bash
pkg update && pkg upgrade
pkg install nodejs git
git clone https://github.com/AciLNiBoss/Panel-wa-badak.git
cd Panel-wa-badak
bash New.sh
```

---

## ☁️ Jalankan di VPS / Linux

```bash
apt update && apt upgrade
apt install nodejs npm git -y

git clone https://github.com/AciLNiBoss/Panel-wa-badak.git
cd Panel-wa-badak

bash New.sh
```

---

## 🔥 Jalankan 24 Jam (PM2)

```bash
npm install -g pm2

pm2 start Wa_enc.js
pm2 start Blast_enc.js

pm2 save
pm2 startup
```

---

## ⚠️ Catatan Penting
- Jangan spam berlebihan (risiko banned)
- Gunakan delay saat blast
- Gunakan nomor cadangan
- WhatsApp memiliki sistem anti-spam

---

## 🐞 Troubleshooting

### ❌ Tidak bisa jalan script `.sh`
```bash
chmod +x New.sh
bash New.sh
```

---

### ❌ Module error
```bash
npm install
```

---

### ❌ QR tidak muncul
- Hapus session lama
- Jalankan ulang bot

---

## 📈 Saran Upgrade
- 🔥 Tambahkan panel web (dashboard)
- 🔥 Integrasi Telegram bot
- 🔥 Auto reply AI
- 🔥 Database (Firebase / MongoDB)
- 🔥 Sistem member / user

---

## 👨‍💻 Author
- AciLNiBoss

---

## ⭐ Support
Kalau project ini membantu:

- ⭐ Star repo
- 🍴 Fork
- 🔧 Kembangkan

---

## 📜 License
Free to use & modify.
