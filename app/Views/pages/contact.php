<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2>Social Media</h2>
            <?php foreach ($contact as $c) : ?>
                <ul>
                    <li><?= $c['tipe']; ?></li>
                    <li><?= $c['alamat']; ?></li>
                    <li><?= $c['kota']; ?></li>
                </ul>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<?= $this->endSection(''); ?>