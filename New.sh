#!/data/data/com.termux/files/usr/bin/bash

while true; do
    clear
    echo -e "\e[36m=========================================\e[0m"
    echo -e "\e[32m        ACL XCODE - BOT MANAGER          \e[0m"
    echo -e "\e[36m=========================================\e[0m"
    echo -e "\e[35m1.\e[0m Setup Blast WA (Konek ke Server ACL)"
    echo -e "\e[33m2.\e[0m Setup Bot Baru (Lokal Baileys)"
    echo -e "\e[33m3.\e[0m Jalankan Bot ke Background (PM2)"
    echo -e "\e[33m4.\e[0m Lihat Daftar Bot Aktif"
    echo -e "\e[33m5.\e[0m Hapus Bot (Hapus Proses & Sesi)"
    echo -e "\e[33m6.\e[0m Hapus SEMUA Bot & Sesi (Reset Total)"
    echo -e "\e[31m0.\e[0m Keluar"
    echo -e "\e[36m=========================================\e[0m"
    read -p "Pilih menu [0-6]: " menu

    case $menu in
        1)
            echo ""
            echo -e "\e[35m=== SETUP BLAST WA ===\e[0m"
            read -p "Masukkan Nomor WA Target (misal: 628xxx): " nomor_blast
            echo ""
            node Blast_enc.js "$nomor_blast"
            echo ""
            read -p "Tekan Enter untuk kembali ke menu..."
            ;;
        2)
            echo ""
            echo -e "\e[32m=== SETUP BOT LOKAL ===\e[0m"
            read -p "Masukkan nama sesi bot (misal: bot1): " sesi
            if [ -d "auth_info_$sesi" ]; then
                echo -e "\e[31m[!] Sesi '$sesi' sudah ada.\e[0m"
                read -p "Hapus sesi lama agar bisa pairing ulang? (y/n): " hapus_lama
                if [ "$hapus_lama" == "y" ]; then
                    rm -rf "auth_info_$sesi"
                else
                    continue
                fi
            fi
            node wa_enc.js "$sesi"
            read -p "Tekan Enter untuk kembali ke menu..."
            ;;
        3)
            echo ""
            read -p "Masukkan nama sesi (Lokal/Blast) yang mau di-background: " sesi
            pm2 start wa_enc.js --name "$sesi" -- "$sesi"
            pm2 save
            read -p "Tekan Enter untuk kembali ke menu..."
            ;;
        4)
            echo ""
            pm2 list
            read -p "Tekan Enter untuk kembali ke menu..."
            ;;
        5)
            echo ""
            read -p "Masukkan nama bot yang mau dihapus: " sesi
            pm2 delete "$sesi"
            rm -rf "auth_info_$sesi"
            read -p "Tekan Enter untuk kembali ke menu..."
            ;;
        6)
            echo ""
            read -p "Yakin Reset Total? (y/n): " confirm
            if [ "$confirm" == "y" ]; then
                pm2 delete all
                rm -rf auth_info_*
            fi
            read -p "Tekan Enter untuk kembali ke menu..."
            ;;
        0)
            exit 0
            ;;
        *)
            echo -e "\e[31mPilihan tidak valid!\e[0m"
            sleep 1
            ;;
    esac
done
