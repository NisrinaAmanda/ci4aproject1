<?php

namespace App\Controllers;

use CodeIgniter\Debug\Toolbar\Collectors\Views;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Beranda | Decor Home'
        ];

        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'Tentang Perusahaan'
        ];

        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Kontak',
            'contact' => [
                [
                    'tipe' => '@Nkcosmeticsparepart',
                    'alamat' => '@Ncosmetics.co',
                    'kota' => '@Nservice.cosmetics'
                ],
                [
                    'tipe' => '@Ntowing.cosmetics',
                    'alamat' => 'NCatalog',
                    'kota' => 'Palembang,Sumatera selatan'
                ]
            ]
        ];

        return view('pages/contact', $data);
    }
}
