# 🚀 Panel WA Badak (Enc Version)

Panel WhatsApp automation berbasis **Node.js** dengan fitur blast, multi session, dan auto installer via script shell.  
Cocok dijalankan di **Termux, VPS, maupun Localhost**.

---

## 📌 Fitur Utama
- ✅ Multi session WhatsApp  
- ✅ Kirim pesan otomatis (blast)  
- ✅ File sudah di-encode (lebih aman)  
- ✅ Auto install via script `.sh`  
- ✅ Support Termux / VPS / Linux  
- ✅ Mudah dikembangkan (API / Panel / Bot)

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
- Termux / Linux / VPS

---

## 🚀 Cara Install (Full Auto - Recommended)

Jalankan perintah berikut:

```bash
pkg update && pkg upgrade -y && \
pkg install git nodejs -y && \
git clone https://github.com/AciLNiBoss/Panel-wa-badak.git && \
cd Panel-wa-badak && \
npm init -y && \
npm install && \
npm install chalk@4.1.2 figlet dotenv @whiskeysockets/baileys pino libsignal-node @ai-sdk/google ai axios && \
npm install -g pm2 && \
chmod +x New.sh && \
bash New.sh
```

---

## 📦 Install Semua Module (Perintah Sakti 🔥)

Jika terjadi error module, jalankan:

```bash
npm install @whiskeysockets/baileys pino libsignal-node @ai-sdk/google ai dotenv chalk@4.1.2 figlet axios
```

Atau versi alternatif:

```bash
npm install chalk@4.1.2 figlet dotenv @whiskeysockets/baileys pino libsignal-node @ai-sdk/google ai
```

---

## 📥 Cara Install Manual

### 1. Clone Repository
```bash
git clone https://github.com/AciLNiBoss/Panel-wa-badak.git
cd Panel-wa-badak
```

### 2. Install Dependencies
```bash
npm init -y
npm install
```

### 3. Install Module Penting
```bash
npm install chalk@4.1.2 figlet dotenv @whiskeysockets/baileys pino libsignal-node @ai-sdk/google ai axios
```

### 4. Jalankan Script
```bash
bash New.sh
```

---

## ▶️ Menjalankan Secara Manual

### Jalankan WhatsApp
```bash
node Wa_enc.js
```

### Jalankan Blast
```bash
node Blast_enc.js
```

---

## 🔑 Login WhatsApp

Saat pertama kali menjalankan:

1. Akan muncul QR Code / pairing code  
2. Buka WhatsApp → **Linked Devices**  
3. Tambahkan perangkat  

Setelah berhasil:
- Session tersimpan otomatis  
- Tidak perlu scan ulang  

---

## 📤 Cara Blast Pesan

Edit file `Blast_enc.js`:

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

### ❌ Error: Cannot find module
```bash
npm install
```

### ❌ Fix semua module (Rekomendasi)
```bash
npm install @whiskeysockets/baileys pino libsignal-node @ai-sdk/google ai dotenv chalk@4.1.2 figlet axios
```

### ❌ Script `.sh` tidak bisa dijalankan
```bash
chmod +x New.sh
bash New.sh
```

### ❌ QR tidak muncul
- Hapus folder session  
- Jalankan ulang bot  

---

## ⚠️ Catatan Penting
- Hindari spam berlebihan  
- Gunakan delay agar lebih aman  
- Gunakan nomor cadangan  
- Risiko banned tetap ada  

---

## 💡 Tips Anti Banned

Tambahkan delay pada script blast:

```js
await new Promise(r => setTimeout(r, 5000))
```

---

## 📈 Saran Pengembangan
- 🔥 Dashboard Web (Admin Panel)  
- 🔥 Auto Reply AI  
- 🔥 Scheduler Pesan  
- 🔥 Integrasi Telegram Bot  
- 🔥 Database (Firebase / MongoDB)  
- 🔥 Multi Account System  

---

## 👨‍💻 Author
- **AciLNiBoss**

---

## ⭐ Support
Jika project ini membantu:

- ⭐ Star repository  
- 🍴 Fork project  
- 🔧 Kembangkan fitur  

---

## 📜 License
Free to use & modify.
