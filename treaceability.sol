// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
pragma experimental ABIEncoderV2;

contract Treaceability {
  State public state;
  mapping (int => Mentah) p_mentah_bank;
  mapping (int => Jadi) p_jadi_bank;
  mapping (int => Stup) stup_bank;
  mapping (int => Peternak) peternak_bank;
  
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

  // Penulisan Data
  function f1_movedProduct(State memory st, int src, int dest, int id) public {
    
  }

  function f2_addStupStatus(State memory st, int id_stup, Stup memory new_data) public {
    
  }

  function f3_changeRumahProduksiStatus(State memory st, RumahProduksi memory new_data) public {
    
  }

  function f4_farming(State memory st, int[] memory stup_sumber, int id_peternak, string[] memory komposisi_volume) public {
    
  }

  // Pembacaan data
  function g1_getStupInfo(State memory st, int id_stup) public view returns (Stup memory) {
    return stup_bank[id_stup];
  }

  function g2_getPeternakInfo(State memory st, int id_peternak) public view returns (Peternak memory) {
    
  }

  function g3_getRumahProduksiInfo() {
    
  }
  
}