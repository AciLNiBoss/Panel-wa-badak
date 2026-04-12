# 🚀 Panel WA Badak (Enc Version)

Panel WhatsApp automation berbasis Node.js dengan fitur blast, multi session, dan auto installer via script shell. Cocok dijalankan di Termux, VPS, maupun local.

---

## 📌 Fitur Utama
- ✅ Multi session WhatsApp
- ✅ Kirim pesan otomatis (blast)
- ✅ File sudah di-encode (lebih aman)
- ✅ Auto install via script `.sh`
- ✅ Support Termux / VPS / Linux
- ✅ Bisa dikembangkan ke panel / API / bot

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

- Node.js (v18+ disarankan)
- Git
- Termux / Linux / VPS

---

## 🚀 Cara Install (Full Auto - Recommended)

Copy dan jalankan 1x:

```bash
pkg update && pkg upgrade -y \
&& pkg install git nodejs -y \
&& git clone https://github.com/AciLNiBoss/Panel-wa-badak.git \
&& cd Panel-wa-badak \
&& npm init -y \
&& npm install \
&& npm install chalk@4.1.2 figlet @whiskeysockets/baileys pino axios \
&& npm install -g pm2 \
&& chmod +x New.sh \
&& bash New.sh
```

---

## 📥 Cara Install Manual

### 1. Clone Repo
```bash
git clone https://github.com/AciLNiBoss/Panel-wa-badak.git
cd Panel-wa-badak
```

---

### 2. Install Dependency
```bash
npm init -y
npm install
npm install chalk@4.1.2 figlet @whiskeysockets/baileys pino axios
```

---

### 3. Jalankan Script
```bash
bash New.sh
```

---

## ▶️ Cara Menjalankan Manual

### Jalankan WhatsApp
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

- Akan muncul QR Code / pairing code
- Scan melalui WhatsApp:
  - Buka WhatsApp
  - Linked Devices
  - Tambahkan perangkat

Setelah login:
- Session akan tersimpan otomatis
- Tidak perlu login ulang

---

## 📤 Cara Blast Pesan

Edit file `Blast_enc.js` jika ingin custom:

```js
const numbers = ["628xxx", "628xxx"]
const message = "Pesan kamu"
```

---

## 🔁 Jalankan 24 Jam (PM2)

```bash
pm2 start Wa_enc.js
pm2 start Blast_enc.js
pm2 save
```

Cek status:
```bash
pm2 list
```

---

## ⚠️ Troubleshooting

### ❌ Error: Cannot find module 'chalk'
```bash
npm install chalk@4.1.2
```

---

### ❌ Module tidak ditemukan
```bash
npm install
```

---

### ❌ Script .sh tidak bisa jalan
```bash
chmod +x New.sh
bash New.sh
```

---

### ❌ QR tidak muncul
- Hapus session lama
- Jalankan ulang bot

---

## ⚠️ Catatan Penting
- Hindari spam berlebihan
- Gunakan delay agar aman
- Gunakan nomor cadangan
- Risiko banned tetap ada

---

## 💡 Tips Anti Banned

Tambahkan delay di blast:

```js
await new Promise(r => setTimeout(r, 5000))
```

---

## 📈 Saran Upgrade
- 🔥 Dashboard web (admin panel)
- 🔥 Auto reply AI
- 🔥 Scheduler pesan
- 🔥 Integrasi Telegram bot
- 🔥 Database (Firebase / MongoDB)
- 🔥 Multi akun

---

## 👨‍💻 Author
- AciLNiBoss

---

## ⭐ Support
Jika project ini membantu:

- ⭐ Star repository
- 🍴 Fork project
- 🔧 Kembangkan fitur

---

## 📜 License
Free to use & modify.

---
