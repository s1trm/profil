# Profil Prodi TRM — Project Guide

## Deskripsi
Website profil statis untuk **S1 Terapan Teknologi Rekayasa Multimedia**, Fakultas Ilmu Terapan, Universitas Telkom. Sumber konten resmi: dsm.telkomuniversity.ac.id (file HTML tersimpan di folder `website/`).

## Struktur File
```
profil_prodi/
├── index.html        # Satu halaman, multi-slide (scroll)
├── style.css         # Semua styling
├── shell.nix         # Dev environment NixOS
├── gambar/
│   └── logo-trm.png  # Logo resmi prodi (gold/emas)
└── website/          # Snapshot halaman dsm.telkomuniversity.ac.id
    ├── Homepage ...html
    ├── Visi dan Misi ...html
    ├── Sejarah ...html
    ├── Capaian Pembelajaran ...html
    ├── Profil Lulusan ...html
    └── Prestasi ...html
```

## Color Palette (dari logo TRM)
Logo berwarna **emas/gold solid**. Palette turunannya:

| Variabel CSS       | Hex       | Penggunaan                        |
|--------------------|-----------|-----------------------------------|
| `--gold`           | `#bc9601` | Aksen utama, heading highlight    |
| `--gold-bright`    | `#d4ac02` | Hover, glow                       |
| `--gold-muted`     | `#9a7c01` | Badge, label subtle               |
| `--gold-pale`      | `#f5ecda` | Background card light             |
| `--gold-cream`     | `#fffbf0` | Background section sangat light   |
| `--dark`           | `#0f0d02` | Background utama (dark slides)    |
| `--dark-2`         | `#1a1803` | Sidebar, dark card                |
| `--dark-3`         | `#252310` | Surface gelap secondary           |
| `--off-white`      | `#fdfaf2` | Background light slides           |

## Layout
- **Sidebar kiri fixed** (260px) — navigasi dengan dot indicator, aktif tracking via IntersectionObserver
- **Main content** — seri slide `min-height: 100vh`, bergantian `slide-dark` dan `slide-light`
- Slide 1 (Hero) dan 3 (Visi Misi) = dark background
- Slide 2 (Sejarah), 4 (Lulusan), 6 (Prestasi) = light background

## Slide Structure
1. **Hero** — full dark, logo text besar, placeholder gambar kanan, stats
2. **Sejarah** — timeline 2015→2017→2020→2022, foto kiri
3. **Visi & Misi** — split dark, visi box + 4 misi bernomor
4. **Profil Lulusan** — 3 profil mandiri + 3 profesi utama
5. **PLO** — grid 5 kolom (10 PLO), dark bg
6. **Prestasi** — foto kiri + grid 2 kolom daftar prestasi
7. **Kontak** — tabel info prodi + detail kontak

## Konten Resmi (dari website prodi)
- **Visi**: unggulan berskala internasional — konten, rekayasa multimedia interaktif, kewirausahaan — 2028
- **Email**: s1trm@tass.telkomuniversity.ac.id
- **Lokasi**: Gedung Selaru, Universitas Telkom, Bandung
- **Berdiri**: 2015 (sebagai D4 Sistem Multimedia, SK 101/KPT/I/2015)
- **Akreditasi**: UNGGUL BAN-PT, SK No. 2304/SK/BAN-PT/Akred/ST/IV/2022
- **10 PLO**: berpikir kritis, kontribusi mandiri, lifelong learner, solusi ilmiah, kolaborasi, kepemimpinan, kreator konten, pengembang interaktif, technopreneur, manajer proyek

## Placeholder Images
Semua placeholder dibuat dengan CSS (tidak butuh file eksternal). Ganti dengan `<img src="...">` saat foto tersedia. Setiap placeholder diberi label italic di bagian bawah yang menjelaskan foto apa yang sebaiknya digunakan.

## Dev Environment (NixOS)
```bash
nix-shell          # masuk environment
live-server        # preview dengan auto-reload di http://localhost:8080
# atau:
python3 -m http.server 8080
```

## Font
- Heading: **Lato** (700, 900) — via Google Fonts — sesuai font asli website prodi
- Body: **Inter** (400, 500, 600)
