<?php

namespace App\Controllers;

use App\Models\ProdukModel;

class Product extends BaseController
{
    protected $productModel;
    public function __construct()
    {
        $this->produkModel = new ProdukModel();
    }
    public function index()
    {
        // $product = $this->productModel->findAll();


        $data = [
            'title' => 'Daftar Produk',
            'product' => $this->produkModel->getProduct()
        ];


        // cara konek db tanpa model
        // $db = \Config\Database::connect();
        // $product = $db->query("SELECT * FROM product");
        // foreach ($product->getResultArray() as $row) {
        //    d($row);
        // }

        // $productModel = new \App\Models\ProductModel();
        // $productModel = new ProductModel();


        return view('produk/index', $data);
    }

    public function detail($slug)
    {
        $data = [
            'title' => 'Detail Produk',
            'product' => $this->produkModel->getProduct($slug)
        ];

        // jika komik tidak ada di tabel
        if (empty($data['product'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Nama produk ' . $slug . ' tidak ditemukan.');
        }

        return view('produk/detail', $data);
    }

    public function create()
    {
        // session();
        $data = [
            'title' => 'Form Tambah Data Produk',
            'validation' => \Config\Services::validation()
        ];

        return view('produk/create', $data);
    }

    public function save()
    {
        // validasi input
        if (!$this->validate([
            'nama_barang' => [
                'rules' => 'required|is_unique[product.nama_barang]',
                'errors' => [
                    'required' => '{field} produk harus diisi.',
                    'is_unique' => '{field} produk sudah terdaftar'
                ]
            ],
            'merek' => [
                'rules' => 'required|is_unique[product.merek]',
                'errors' => [
                    'required' => '{field} produk harus diisi.',
                    'is_unique' => '{field} produk sudah terdaftar'
                ]
            ],
            'harga_barang' => [
                'rules' => 'required|is_unique[product.harga_barang]',
                'errors' => [
                    'required' => '{field} produk harus diisi.',
                    'is_unique' => '{field} produk sudah terdaftar'
                ]
            ],
            'gambar' => [
                'rules' => 'max_size[gambar,2024]|is_image[gambar]|mime_in[gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            // return redirect()->to('/Product/create')->withInput()->with('validation', $validation);
            return redirect()->to('/Product/create')->withInput();
        }

        //ambil gambar
        $fileGambar = $this->request->getFile('gambar');
        // apakah tidak ada gambar yang diupload
        if ($fileGambar->getError() == 4) {
            $namaGambar = 'default.jpg';
        } else {
            // generate nama gambar random
            $namaGambar = $fileGambar->getRandomName();
            // pindahkan file ke folder img
            $fileGambar->move('img', $namaGambar);
        }



        $slug = url_title($this->request->getVar('nama_barang'), '-', true);
        $this->produkModel->save([
            'nama_barang' => $this->request->getVar('nama_barang'),
            'slug' => $slug,
            'merek' => $this->request->getVar('merek'),
            'harga_barang' => $this->request->getVar('harga_barang'),
            'gambar' => $namaGambar
        ]);

        session()->setFlashdata('pesan', 'Data berhasil ditambahkan.');

        return redirect()->to('/product');
    }

    public function delete($id)
    {
        // cari gambar berdasarkan id
        $product = $this->produkModel->find($id);

        // cek jika file gambarnya default.jpg
        if ($product['gambar'] != 'default.jpg') {
            //hapus gambar
            unlink('img/' . $product['gambar']);
        }


        $this->produkModel->delete($id);
        session()->setFlashdata('pesan', 'Data berhasil dihapus.');
        return redirect()->to('/product');
    }

    public function edit($slug)
    {
        $data = [
            'title' => 'Form Ubah Data Produk',
            'validation' => \Config\Services::validation(),
            'product' => $this->produkModel->getProduct($slug)
        ];

        return view('produk/edit', $data);
    }

    public function update($id)
    {
        // cek nama barang
        $produkLama = $this->produkModel->getProduct($this->request->getVar('slug'));
        if ($produkLama['nama_barang'] == $this->request->getVar('nama_barang')) {
            $rule_nama_barang = 'required';
        } else {
            $rule_nama_barang = 'required|is_unique[product.nama_barang]';
        }
        if ($produkLama['merek'] == $this->request->getVar('merek')) {
            $rule_merek = 'required';
        } else {
            $rule_merek = 'required|is_unique[product.merek]';
        }
        if ($produkLama['harga_barang'] == $this->request->getVar('harga_barang')) {
            $rule_harga_barang = 'required';
        } else {
            $rule_harga_barang = 'required|is_unique[product.harga_barang]';
        }

        if (!$this->validate([
            'nama_barang' => [
                'rules' => $rule_nama_barang,
                'errors' => [
                    'required' => '{field} produk harus diisi.',
                    'is_unique' => '{field} produk sudah terdaftar'
                ]
            ],
            'merek' => [
                'rules' => $rule_merek,
                'errors' => [
                    'required' => '{field} produk harus diisi.',
                    'is_unique' => '{field} produk sudah terdaftar'
                ]
            ],
            'harga_barang' => [
                'rules' => $rule_harga_barang,
                'errors' => [
                    'required' => '{field} produk harus diisi.',
                    'is_unique' => '{field} produk sudah terdaftar'
                ]
            ],
            'gambar' => [
                'rules' => 'max_size[gambar,2024]|is_image[gambar]|mime_in[gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]

        ])) {
            return redirect()->to('/Product/edit/' . $this->request->getVar('slug'))->withInput();
        }

        $fileGambar = $this->request->getFile('gambar');

        // cek gambar, apakah tetap gambar lama
        if ($fileGambar->getError() == 4) {
            $namaGambar = $this->request->getVar('gambarLama');
        } else {
            // generate nama file random
            $namaGambar = $fileGambar->getRandomName();
            // pindahkan gambar
            $fileGambar->move('img', $namaGambar);
            // hapus file yang lama
            unlink('img/' . $this->request->getVar('gambarLama'));
        }




        $slug = url_title($this->request->getVar('nama_barang'), '-', true);
        $this->produkModel->save([
            'id' => $id,
            'nama_barang' => $this->request->getVar('nama_barang'),
            'jenis' => $jenis,
            'merek' => $this->request->getVar('merek'),
            'harga_barang' => $this->request->getVar('harga_barang'),
            'gambar' => $namaGambar
        ]);

        session()->setFlashdata('pesan', 'Data berhasil diubah.');

        return redirect()->to('/product');
    }
}
