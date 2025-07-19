# BookStack Manual Installation (Custom Fork)

Ini adalah panduan instalasi manual untuk menjalankan proyek BookStack Laravel ini secara lokal maupun di server. Pastikan sistem Anda telah memenuhi kebutuhan minimum sebelum mengikuti langkah-langkah di bawah ini.

## Requirements

- PHP >= 8.1
- Composer
- MySQL / MariaDB
- Node.js & NPM
- Web server (Apache/Nginx)
- Git

---

## Installation Steps

### 1. Clone Repository

```bash
git clone https://github.com/username/BookStack.git
cd BookStack
```

### 2. Install PHP Dependencies

```bash
composer install --no-dev
```

### 3. Copy .env File & Configure

```bash
cp .env.example .env
```

Edit .env dan isi detail koneksi database, konfigurasi email, dan pengaturan lainnya sesuai kebutuhan Anda.

### 4. Generate Application Key

```bash
php artisan key:generate
```

### 5. Set Folder Permissions

Pastikan folder berikut dapat ditulis oleh web server:

```bash
chmod -R 775 storage
chmod -R 775 bootstrap/cache
chmod -R 775 public/uploads
```

### 6. Run Database Migration

```bash
php artisan migrate
```

### 7. Build Frontend Assets

```bash
npm install
npm run dev
```

## untuk production

```bash
npm run build
```

#### akun login admin

username : admin@admin.com, password : password
