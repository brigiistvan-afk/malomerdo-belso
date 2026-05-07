# 🌲 Malomerdő Panzió – Belső Menedzsment Alkalmazás

Mobil-barát, egyoldalas webalkalmazás valós idejű **Supabase** szinkronizációval.

---

## 📱 Funkciók

| Szekció | Funkciók |
|---|---|
| **Dashboard** | Reggeli/vacsora létszám, foglalt szobák számlálója, közelgő programok, műszakátadó |
| **Szobák** | 14 szoba státusza (Vadászkastély + Parasztház), szűrők, megjegyzések |
| **Wellness** | Jakuzzi & szauna foglalások időpontonként, valós idejű frissítés |
| **Rendezvény** | Esemény rögzítése catering igénnyel, elviteles tálak, fotó csatolás |

---

## 🚀 Beüzemelés (5 lépés)

### 1. Supabase projekt létrehozása
1. Menj a [supabase.com](https://supabase.com) oldalra → **New Project**
2. Jegyezd fel: **Project URL** és **anon public key** (Settings → API)

### 2. Adatbázis táblák létrehozása
1. Supabase Dashboard → **SQL Editor**
2. Másold be a `supabase_setup.sql` tartalmát → **Run**

### 3. Realtime bekapcsolása
Supabase Dashboard → **Database** → **Replication** → kapcsold be: `rooms`, `events`, `wellness`, `shift`

### 4. Az app konfigurálása
Az `index.html` tetején cseréld ki:

```javascript
const SUPABASE_URL = 'https://XXXXXXXXXXXXX.supabase.co';
const SUPABASE_KEY = 'eyXXXXXXXXXXXXXXXXXXXXXXXXXXXXX';
```

### 5. GitHub Pages közzététel
```bash
git init && git add . && git commit -m "első verzió"
git remote add origin https://github.com/[user]/malomerdő-app.git
git push -u origin main
```
Majd: GitHub → Settings → Pages → Source: `main` branch

---

## 💾 Szinkronizáció

```
Telefon A  ──┐
             ├──▶  Supabase (PostgreSQL)  ◀── Valós idejű WebSocket
Telefon B  ──┘
```

✅ Minden eszközön azonnal frissül · ✅ Ingyenes Supabase tier elegendő · ✅ PWA – telepíthető telefonra

---

## 📁 Fájlstruktúra

```
malomerdő-app/
├── index.html            ← az alkalmazás
├── supabase_setup.sql    ← adatbázis létrehozás
├── manifest.json         ← PWA manifest
├── favicon.ico
├── icons/                ← 16px – 512px ikonok
├── README.md
├── LICENSE
└── .gitignore
```

---

## 📄 Licenc · MIT
