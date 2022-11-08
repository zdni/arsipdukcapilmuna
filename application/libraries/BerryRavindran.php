<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BerryRavindran
{
	
	function __construct() {
	}

    public function search( $keyword, $filters, $datas )
    {
        $time_start = microtime(true); 
        $results = [];
        
        // pre processing
        $keyword = strtolower( $keyword );  // rubah semua keyword menjadi huruf kecil      => 'Yoan' menjadi 'yoan'
        $key_length = strlen($keyword);     // hitung panjang (banyak huruf) keyword        => 'yoan' ada 5 huruf, berarti panjangnya 5
        $key_array = str_split($keyword);   // membagi huruf menjadi array                  => 'yoan' menjadi ['y', 'o', 'a', 'n']
        $key_array_sort = $key_array;       // $key_array_sort di isi nilainya sama dengan $key_array
        sort($key_array_sort);              // mengurutkan huruf-huruf yang ada di dalam array  => ['y', 'o', 'a', 'n'] menjadi ['a', 'n', 'o'. 'y']
        $key_array_sort[] = '*';            // menambahkan '*' ke dalam $key_array_sort     => ['a', 'n', 'o'. 'y'] menjadi ['a', 'n', 'o'. 'y', '*']
        $key_array_sort[] = '*';            // menambahkan '*' ke dalam $key_array_sort     => ['a', 'n', 'o'. 'y', '*'] menjadi ['a', 'n', 'o'. 'y', '*', '*']
        
        $tabel_BRbc_shift = [];             // inisiasi variabel
        
        // perulangan untuk membuat tabel bbrc
        foreach ($key_array_sort as $key) {
            $tabel_BRbc_shift[$key] = [];                       // untuk array $tabel_BRbc_shift di isi dengan huruf yang ada di $key_array_sort    => ['a' => []] terusn jadi ['a'=> [], 'n' => []] sampai selesai
            foreach ($key_array_sort as $key_) {
                $tabel_BRbc_shift[$key][$key_] = $key_length+2; // di isi untuk setiap array dengan huruf dan panjang keyword+2                     => ['a' => ['a' => 2]] terus ['a' => ['a' => 6, 'n' => 6]] sampai selesai
            }
        }
        // print_r( $tabel_BRbc_shift );
        // die;
        // hasil akhirnya $tabel_BRbc_shift isinya
        // [
        //     'a' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 6, '*' => 6],
        //     'n' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 6, '*' => 6],
        //     'o' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 6, '*' => 6],
        //     'y' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 6, '*' => 6],
        //     '*' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 6, '*' => 6],
        // ];

        foreach ($tabel_BRbc_shift as $key => $value) {
            $tabel_BRbc_shift[$key][$key_array[0]] = $key_length+1; // untuk setiap huruf y, diisi dengan panjang keyword + 1   => ['a' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 6, '*' => 6]] jadi ['a' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 5, '*' => 6]]
                                                                    //                                                          => ['n' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 6, '*' => 6]] jadi ['n' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 5, '*' => 6]]
                                                                    // sampai selesai
        }
        // print_r( $tabel_BRbc_shift );
        // die;
        // hasil akhirnya $tabel_BRbc_shift isinya
        // [
        //     'a' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 5, '*' => 6],
        //     'n' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 5, '*' => 6],
        //     'o' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 5, '*' => 6],
        //     'y' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 5, '*' => 6],
        //     '*' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 5, '*' => 6],
        // ];
        
        for ($i=0; $i < $key_length; $i++) { 
            if( $i == ($key_length-1)) {
                $tabel_BRbc_shift[$key_array[$i]]['*'] = $key_length-($i);
            } else {
                $tabel_BRbc_shift[$key_array[$i]][$key_array[$i+1]] = $key_length-($i);
            }
        }
        // print_r( $tabel_BRbc_shift );
        // die;
        // hasil akhirnya $tabel_BRbc_shift isinya
        // [
        //     'a' => ['a' => 6, 'n' => 2, 'o' => 6. 'y' => 5, '*' => 6],
        //     'n' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 5, '*' => 1],
        //     'o' => ['a' => 3, 'n' => 6, 'o' => 6. 'y' => 5, '*' => 6],
        //     'y' => ['a' => 6, 'n' => 6, 'o' => 4. 'y' => 5, '*' => 6],
        //     '*' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 5, '*' => 6],
        // ];

        foreach ($tabel_BRbc_shift as $key => $value) {
            $tabel_BRbc_shift[$key_array[$key_length-1]][$key] = 1;
        }
        // print_r( $tabel_BRbc_shift );
        // die;
        // hasil akhirnya $tabel_BRbc_shift isinya
        // [
        //     'a' => ['a' => 6, 'n' => 2, 'o' => 6. 'y' => 5, '*' => 6],
        //     'n' => ['a' => 1, 'n' => 1, 'o' => 1. 'y' => 1, '*' => 1],
        //     'o' => ['a' => 3, 'n' => 6, 'o' => 6. 'y' => 5, '*' => 6],
        //     'y' => ['a' => 6, 'n' => 6, 'o' => 4. 'y' => 5, '*' => 6],
        //     '*' => ['a' => 6, 'n' => 6, 'o' => 6. 'y' => 5, '*' => 6],
        // ];
        
        // print_r( $datas );
        // print_r( $filters );
        // die;

        // $datas itu isinya semua arsip yang ada di database
        // $filters itu isinya semua field yang mau di cari, bisa jadi semua field, atau bisa hanya field nama atau nik atau tempat lahir atau yang lain

        // dimisalkan $filters isinya ['nama', 'nik']

        // fase pencarian
        // perulangan untuk setiap data
        foreach ($datas as $data) {
            // $data itu isinya arsip
            $find = false;              // ini untuk menghindari double data yang ditemukan
            foreach ($filters as $filter) {
                
                $kata = $data->$filter;         // $data->$filter berarti ambil nilai dari array $data yang indexnya $filter jadi nanti di ambil nama dan nik dari $data
                
                $kata = strtolower( $kata );    // mengubah menjadi huruf kecil     => 'Yoan Pattiasina' menjadi 'yoan pattiasina'
                $kata_array = str_split($kata); // di ubah menjadi array            => 'yoan pattiasina' ['y', 'o', 'a', 'n' , ' ', 'p', 'a', 't', 't', 'i', 'a', 's', 'i', 'n', 'a']
                $kata_length = strlen($kata);   // di hitung banyak hurufnya        => 'yoan pattiasina' = 15 huruf
        
                $end = $key_length;             // $end di isi dengan panjang keyword   => $end = 4
                $start = 0;
                while( $end <= $kata_length ) { // perulangan dimana $end masih lebih kecil dari $kata_length   => jadi digunakan untuk mencocokkan kata
                    if( substr( $kata, $start, $end ) == $keyword ) {   // pengecekan apakah kata yang di cari cocok
                                                                        // substr( 'yoan pattiasina', 0, 4 ) menghasilkan 'yoan'
                                                                        // karena ketemu, dimasukkan ke dalam array $result 
                        $results[] = $data;
                        $find = true;                                   // karena ketemu $find di isi true
                        break;                                          // break untuk mengakhiri perulangan
                    } else {
                        // jika belum cocok, maka masuk kesini
                        // misal keywordnya patt, lalu katanya adalah 'yoan pattiasina'
                        // dengan asumsi masih dalam perulangan pertama maka $start adalah 0 dan $end adalah 4
                        if( $end+$start >= $kata_length || $end+$start+1 >= $kata_length ) break;               // mengecek apakah index berikutnya yaitu $end+$start atau $end+$start+1 emelebihi panjang kata 'yoan pattiasina'
                                                                                                                // 0+4 >= 15 atau 0+4+1 >= 15  karena menghasilkan false, maka tidak dilakukan break
        
                        $a = in_array( $kata_array[$end+$start], $key_array ) ? $kata_array[$end+$start] : '*';         // mengecek apakah huruf selanjutnya di kata 'yoan pattiasiana' ada di array keyword, kata selanjutnya ada pada index 5 dari kata 'yoan pattiasina' yaitu ' '
                                                                                                                        // karena ' ' tidak ada dalam array keyword 'patt' maka $a menjadi '*'
                        $b = in_array( $kata_array[$end+$start+1], $key_array ) ? $kata_array[$end+$start+1] : '*';     // mengecek apakah huruf selanjutnya di kata 'yoan pattiasiana' ada di array keyword, kata selanjutnya ada pada index 6 dari kata 'yoan pattiasina' yaitu 'p'
                                                                                                                        // karena 'p' ada dalam array keyowrd 'patt' maka $b menjadi 'p'
                        $start = $start + $tabel_BRbc_shift[$a][$b];                                                    // $start di isi dengan $start + $tabel_BRbc_shift['*']['p']
                    }
                }
                if($find) break;        // jika $find nya true, maka break dan keluar dari perulangan
            }
        }
        $time_end = microtime(true);
        $execution_time = ($time_end - $time_start); // dalam miliseconds
        return [$results, $execution_time];
    }
}
