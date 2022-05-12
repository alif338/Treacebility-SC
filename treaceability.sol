// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Treaceability {
  struct Stup {
    int id;
    string[] lokasi;
    string link_foto;
    int terakhir_dipanen;
    string produktivitas; // float
  }

  struct Peternak {
    int id;
    string jumlah_madu; // float
  }

  struct Mentah {
    int no_batch;
    string jumlah; // float
    int[] stup_sumber;
    string warna;
    string rasa;
    int tanggal_dipanen;
  }

  struct Jadi {
    int product_id;
    int[] stup_sumber;
    bool jenis; // 0: madu, 1: propolis
    string grade;
    string volume; // fload
    int tanggal_produksi;
    int tanggal_kadaluwarsa;
  }

  struct RumahProduksi {
    Mentah[] products_raw;
    Jadi[] products;
  }

  struct State {
    Stup[] stups;
    Peternak[] peternaks;
    RumahProduksi rumah_produksi;
    Jadi[] konsumen;
    int[][] graf;
  }

  struct Main {
    State St;
    string src;
    string dest;
    string product_id;
    string stup_id;
    string peternak_id;
  }
}