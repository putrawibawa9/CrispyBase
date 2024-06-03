<?php
require_once 'classProduk.php'; 
require_once '../admin/header.php'; 


$hasil = new Produk\Burger;
$burger = $hasil->readProduk();
?>


  
    
    <div class="container">
      <div class="row">
        <div class="col-12 p-3 bg-white">
          <h3>Pizza</h3>
          <a href="produk-tambah.php" class="btn btn-primary  mb-3">Add</a>
          <table class="table table-bordered">
            <thead>
              <tr>
                <th class="text-center">Number</th>
                    <th class="text-center">Kategori</th>
                    <th class="text-center">Pizza Name</th>
                    <th class="text-center">Descriptions</th>
                    <th class="text-center">Picture</th>
                    <th class="text-center">Harga</th>
                    <th class="text-center">Stok</th>
                    <th class="text-center">Options</th>
                    
                  </tr>
            </thead>
            <tbody>
              <?php $i=1?>
              <?php foreach($burger as $row):?>
                <tr>
                  <td><?=$i++ ?></td>
                  <td ><?=$row['nama_kategori']?></td>
                  <td ><?=$row['nama_produk']?></td>
                  <td ><?=$row['keterangan_produk']?></td>
                  <td class="text-center" > <img src="../img/<?=$row['gambar']?>" width="100px"></td>
                  <td ><?=$row['harga_produk']?></td>
                  <td ><?=$row['stok_produk']?></td>
                   <td>
                    <a  href="produk-form.php?id_produk=<?=$row['id_produk'];?>" class="btn btn-warning btn-sm ">Edit</a>
                    <a href="produk-delete.php?id_produk=<?=$row['id_produk'];?>" class="btn btn-danger btn-sm " onclick="return confirm('yakin?');">Delete</a>
                   </td>
                  </tr>
                  <?php endforeach; ?>
                </tbody>
        </table>
        <div>
          
          </div>
    </div>
  </div>
</div>



<?php require_once '../admin/footer.php';?>

<?php require_once '../admin/footer.php';?>
<script type="text/javascript">
  $('.nav-link').removeClass('active');
  $('.menu-binatang').addClass('active');
</script>
 
