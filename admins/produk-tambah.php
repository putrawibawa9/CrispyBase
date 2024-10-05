<?php 
    require_once '../admin/header.php';
    require_once 'classProduk.php';

    $result = new Produk\Burger;
    $data = $result->readTwoTable();



//check whether the button has been click or not
if(isset($_POST['submit'])){
    $add = new Produk\Burger;

    $result =$add->addProduk($_POST);
    
    //check the progress
    if ($result){
        echo "
            <script>
            alert('data berhasil ditambah');
            document.location.href = 'produk.php';
            </script>
        ";
    }else{
        echo " <script>
        alert('data gagal ditambah');
        document.location.href = 'produk-tambah.php';
        </script>
    ";

    }

}
?>
<div class="container">
  <div class="row">
    <div class="col-12 p-3 bg-white">
        <h3>Tambah Ogoh-ogoh</h3>


        <form method="post" enctype="multipart/form-data">
 <input type="hidden" name="stok_produk" value="1">
    <div class="mb-3">
        <select class="form-select" name="id_kategori" required>
            <option value=""> --Pilih Wilayah--</option>
            <?php foreach ($data["tableKat"] as $jns) : ?>
                <option value="<?= $jns['id_kategori'] ?>"><?= $jns['nama_kategori'] ?> </option>
            <?php endforeach; ?>
        </select>
    </div>

            <div class="mb-3">
                <label class="form-label"> Nama Ogoh-ogoh</label>
                <input type="text" name="nama_produk" class="form-control" required>
            </div>


            <label class="form-label">Deskripsi</label>
            <div class="mb-3">
            <textarea class="form-control" name="keterangan_produk" rows="3"   required></textarea>
            </div>


            <div class="mb-3">
                <label for="gambar" class="form-label">Gambar</label>
                <input type="file" name="gambar" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">bahan</label>
                <input type="text" name="harga_produk" class="form-control" required>
            </div>


            <a href="produk.php" class="btn btn-success" >Kembali</a>
            <button type="submit" class="btn btn-primary" name="submit" >Simpan</button>
        </form>
    </div>
  </div>
</div>


<?php require_once '../admin/footer.php';?>


<script type="text/javascript">
  $('.nav-link').removeClass('active');
  $('.menu-binatang').addClass('active');
</script>