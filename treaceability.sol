// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Treaceability {
  struct Stup {
    string[] lokasi;
    string link_foto;
    int terakhir_dipanen;
    string produktivitas;
  }

  struct Peternak {
    string jumlah_madu;
    Produk[] produks;
  }

  struct Produk {
    string jumlah;
    Stup[] sumbers;
    string no_batch;
    string warna;
    int tanggal_panen;
  }

  // struct Mentah extends Produk

  struct Jadi {
    int product_id;
    Stup[] sumbers;
    bool jenis; // 0:= madu, 1:= propolis
    string grade;
    string volume;
    string tanggal_produksi;
    string tanggal_kadaluwarsa;
  }

  // struct Konsumen extends Jadi

  struct S_t {
    Stup[] stups;
    Peternak[] peternaks;
    Produk mentah;
   // Jadi[] jadi; 
    Jadi[] konsumen;
    string graf; //  ??
  }

  struct Main {
    S_t St;
    string src;
    string dest;
    string product_id;
    string stup_id;
    string peternak_id;
  }
}