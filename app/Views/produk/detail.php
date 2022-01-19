<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="mt-2"> Detail Produk</h2>
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="/img/<?= $product['gambar']; ?>" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $product['nama_barang']; ?></h5>
                            <p class="card-text"><b>Merek : </b> <?= $product['merek']; ?></p>
                            <p class="card-text"><small class="text-muted"><b>Harga Barang : </b> <?= $product['harga_barang']; ?></small></p>


                            <a href="/product/edit/<?= $product['jenis']; ?>" class="btn btn-warning">Edit</a>

                            <form action="/product/<?= $product['id']; ?>" method="post" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger" onclick="return confirm('apakah anda yakin?')">Delete</button>
                            </form>

                            <br></br>
                            <a href="/product" class="btn btn-primary">Kembali ke daftar produk</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>