<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand" href="/">Rcar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Beranda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/product">Produk</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#section1">Tentang Rcar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/orang">Cabang Rcar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/pages/contact">Kontak</a>
                </li>
            </ul>
            <?php if (logged_in()) : ?>
                <a class="nav-item btn btn-primary tombol" href="/logout">Logout</a>
            <?php else : ?>
                <a class="nav-item btn btn-primary tombol" href="/login">Login</a>
            <?php endif; ?>
        </div>
    </div>
</nav>
<!-- akhir Navbar -->

<!-- Jambotron -->
<div id="jumbo" class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1 id="tbsar" class="display-4">Ncosmetics <br><span>Beauty and Simple cosmetics</span></h1>
        <a href="" class="btn btn-primary tombol">LIHAT LEBIH DETAIL</a>
    </div>
</div>
<script>
        let bg = document.getElementById('jumbo');
        window.addEventListener('scroll', function(){
            let value = window.scrollY;
            bg.style.top = value * 0.25 + 'px';
        })
</script>
<!-- akhir Jumbotron -->

<!-- Container -->
<div class="container">



    <!-- Info Panel -->
    <div id="panel" class="row justify-content-center">
        <div class="col-10 info-panel">
            <div class="row">
                <div class="col-lg">
                    <img src="/img/kosmetik.jpg" alt="employee" class="float-left">
                    <h4> Produk terbaru</h4>
                    <p>Kami selalu menyediakan produk cosmetics yang terbaru</p>
                </div>
                <div class="col-lg">
                    <img src="/img/Diskon-Ibadah-10-Persen.jpg" alt="employee" class="float-left">
                    <h4> Diskon</h4>
                    <p>Selalu ada diskon 5-10% untuk para pembeli cosmetics</p>
                </div>
                <div class="col-lg">
                    <img src="/img/service.jpg" alt="employee" class="float-left">
                    <h4>Gratis PPN</h4>
                    <p>Gratis PPN 2x dari awal pembelian cosmetics</p>
                </div>
            </div>
        </div>
    </div>
    <script>
        let bg = document.getElementById('panel');
        window.addEventListener('scroll', function(){
            let value = window.scrollY;
            bg.style.top = value * 0.55 + 'px';
        })
    </script>
    <!-- akhir info panel -->



    <!-- workingspace -->
    <div class="row workingspace" id="section1">
        <div id="workimg" class="col-lg-6">
            <img src="/img/kosmetik2.jpg" alt="workingspace" class="img-fluid">
        </div>
        <div class="col-lg-4">
            <h3>Anda <span>Puas </span>Kami <span>Senang </span></h3>
            <p>"Tidak hanya menjual cosmetics,kami juga menyediakan jasa Konsultasi yang membuat anda selalu aman dan juga nyaman"
        </div>
    </div>
    <script>
        let bg = document.getElementById('workimg');
        window.addEventListener('scroll', function(){
            let value = window.scrollY;
            bg.style.bottom = value * 0.25 + 'px';
        })
    </script>
    <!-- akhir workspace -->


    <!-- Testimonial -->
    <section class="testimonial">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <h5>Nisrina Cosmetics</h5>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-6 justify-content-center d-flex">
                <figure id="fg1" class="figure">
                    <img src="/img/Rafif(co-founder).jpg" class="figure-img img-fluid rounded-circle" alt="Rafif 1">
                    <figcaption class="figure-caption">
                        <h5>Rafif</h5>
                        <p>Co-founder</p>
                    </figcaption>
                </figure>
                <figure class="figure">
                    <img src="/img/Nisrina(founder).jpg" class="figure-img img-fluid rounded-circle utama" alt="Nisrina 2">
                    <figcaption class="figure-caption">
                        <h5>Nisrina</h5>
                        <p>Founder</p>
                    </figcaption>
                </figure>
                <figure id="fg2" class="figure">
                    <img src="/img/Alfin(ceo).jpg" class="figure-img img-fluid rounded-circle" alt="Alfin 3">
                    <figcaption class="figure-caption">
                        <h5>Alfin</h5>
                        <p>Ceo</p>
                    </figcaption>
                </figure>
            </div>
        </div>
        <script>
        let fg1 = document.getElementById('fg1');
        let fg2 = document.getElementById('fg2');
        window.addEventListener('scroll', function(){
            let value = window.scrollY;
            fg1.style.marginRight = value * 0.05 + 'px';
            fg2.style.marginLeft = value * 0.05 + 'px';
        })
    </script>
    </section>
    <!-- akhir testimonial -->


    <!-- footer -->
    <div class="row footer">
        <div class="col text-center">
            <p>2021 All Rights Reserved by Nisrina Cosmetics</p>
        </div>
    </div>
    <!-- akhir footer -->


</div>
<!-- akhir container -->