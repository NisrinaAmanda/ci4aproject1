<?php

namespace App\Models;

use CodeIgniter\Model;

class ProdukModel extends Model
{
    protected $table = 'product';
    protected $userTimesstamps = true;
    protected $allowedFields = ['nama_barang', 'jenis', 'merek', 'harga_barang', 'gambar'];

    public function getProduct($jenis = false)
    {
        if ($jenis == false) {
            return $this->findAll();
        }

        return $this->where(['jenis' => $jenis])->first();
    }
}
