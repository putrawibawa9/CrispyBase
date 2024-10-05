 <?php
include_once "header.php";

require_once "../admins/classProduk.php";

$burger = new Produk\Burger;

$binatang = $burger->readProduk();




?>
        <div class="w-100 vh-100" id="home">
        <div id="carouselExample" class="carousel slide carousel-fade h-100">
            <div class="carousel-inner h-100">
                <div class="carousel-item h-100 active">
                    <img src="../img/ogoh1.jpg" class="d-block w-100 h-70 object-fit-cover" alt="Gambar 1">
                </div>
                <div class="carousel-item h-100">
                    <img src="../img/ogoh2.jpg" class="d-block w-100 h-100 object-fit-cover" alt="Gambar 2">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>


            <div class="col-12 p-5">
                    <h1 class="display-4">Explore Ogoh-ogoh</h1>
                    <p align="justify">Website "Explore Ogoh-Ogoh Denpasar" dirancang untuk memperkenalkan dan melestarikan tradisi Ogoh-Ogoh di Bali, khususnya di Denpasar. Aplikasi ini menawarkan berbagai fitur yang mencakup informasi mendalam tentang sejarah dan budaya Ogoh-Ogoh, profil detail dari setiap Ogoh-Ogoh yang akan tampil dalam parade, serta peta interaktif yang menunjukkan lokasi-lokasi penting terkait acara ini. Selain itu, pengguna dapat mengakses jadwal kegiatan, berita terbaru, artikel edukatif, dan cerita di balik pembuatan Ogoh-Ogoh, lengkap dengan galeri foto dan video. Dengan demikian, aplikasi ini tidak hanya berfungsi sebagai panduan acara, tetapi juga sebagai sumber informasi budaya yang kaya dan mendalam.</p>
                </div>
              
<?php
include_once "footer.php"
?>

<script type="text/javascript">
  $('.nav-link').removeClass('active');
  $('.menu-home').addClass('active');
</script>
