// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
pragma experimental ABIEncoderV2;

contract Treaceability {
  
  struct Stup {
    int id;
    string[] lokasi; // array of float
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

  mapping (int => Mentah) p_mentah_bank;
  mapping (int => Jadi) p_jadi_bank;
  mapping (int => Stup) stup_bank;
  mapping (int => Peternak) peternak_bank;
  
  Stup[] private stup_arr;
  Peternak[] private peternak_arr;
  RumahProduksi private rumah_produksi;
  Jadi[] private konsumen;
  int[][] private graf;

  struct State {
    string stups,
    string peternaks,
    string rumah_produksi,
    string konsumen,
    string graf
  }
  // Penambahan data STUP
  // function addStup(string[] memory lokasi, string memory link_foto, int terakhir_dipanen, string memory produktivitas) public {
  //     int stup_id = int(stup_arr.length) + 1;
  //     Stup memory _stup = Stup(stup_id, lokasi, link_foto, terakhir_dipanen, produktivitas);
  //     stup_bank[stup_id] = _stup;
  //     stup_arr.push(_stup);
  // }

  // function getStups() public view returns (Stup[] memory) {
  //     return stup_arr;
  // }

  // function getStupById(int id) public view returns (Stup memory) {
  //     return stup_bank[id];
  // }

  // Penambahan data PETERNAK
  function addPeternak() public {
    
  }

  // Perubahan Data ==========================================================
  function f1_movedProduct(int src, int dest, int id) public {
    
  }

  function f2_addStupStatus(int id_stup, Stup memory new_data) public {
    
  }

  function f3_changeRumahProduksiStatus(RumahProduksi memory new_data) public {
    
  }

  function f4_farming(int[] memory stup_sumber, int id_peternak, string[] memory komposisi_volume) public {
    
  }

  // Pembacaan data ========================================================
  function g1_getStupInfo(int id_stup) public view returns (Stup memory) {
   return stup_bank[id_stup];
  }

  function g2_getPeternakInfo(int id_peternak) public view returns (Peternak memory) {
    return peternak_bank[id_peternak];
  }

  function g3_getRumahProduksiInfo() public view returns (RumahProduksi memory) {
    return rumah_produksi;
  }
  
}