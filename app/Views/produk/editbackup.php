<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-3">Form Ubah Data Produk</h2>

            <form action="/product/update/<?= $product['id']; ?>" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <input type="hidden" name="jenis" value="<?= $product['jenis']; ?>">
                <div class="row mb-3">
                    <label for="nama_barang" class="col-sm-2 col-form-label">Nama Barang</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('nama_barang')) ? 'is-invalid' : ''; ?>" id="nama_barang" name="nama_barang" autofocus value="<?= (old('nama_barang')) ? old('nama_barang') : $product['nama_barang']; ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('nama_barang'); ?>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="merek" class="col-sm-2 col-form-label">Merek</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="merek" name="merek" value="<?= (old('merek')) ? old('merek') : $product['merek']; ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="harga_barang" class="col-sm-2 col-form-label">Harga Barang</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="harga_barang" name="harga_barang" value="<?= (old('harga_barang')) ? old('harga_barang') : $product['harga_barang']; ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="gambar" class="col-sm-2 col-form-label">Gambar</label>
                    <div class="col-sm-2">
                        <img src="/img/<?= $product['gambar']; ?>" class="img-thumbnail img-preview">
                    </div>
                    <div class="col-sm-8">
                        <div class="input-group mb-3">
                            <input type="file" class="form-control <?= ($validation->hasError('gambar')) ? 'is-invalid' : ''; ?>" id="gambar" name="gambar" onchange="previewImg()">
                            <label class="input-group-text" for="Gambar"><?= $product['gambar']; ?></label>
                            <div class="invalid-feedback">
                                <?= $validation->getError('gambar'); ?>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Ubah Data</button>
            </form>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>