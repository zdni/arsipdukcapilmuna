<?php

class Arsip_model extends CI_Model {
    private $_table = 'arsip';

    public function tambah( $data = NULL )
    {
        if ( $data ) {
            $this->db->insert( $this->_table, $data);
            $insert_id = $this->db->insert_id();
            return $insert_id;
        }
        return false;
    }

    public function ubah( $id = NULL, $data = NULL )
    {
        if ( $id && $data ) {
            $this->db->where( $this->_table . '.id', $id );
            return $this->db->update( $this->_table, $data );
        }
        return false;
    }

    public function hapus( $id = NULL )
    {
        if ( $id ) {
            $this->db->where( $this->_table . '.id', $id );
            return $this->db->delete( $this->_table );
        }
        return false;
    }

    public function arsip( $id = NULL )
    {
        $this->db->select( $this->_table . '.*' );
        $this->db->select( 'CONCAT(arsip.tempat_lahir, ", ", DATE_FORMAT(arsip.tanggal_lahir, "%d %M %Y")) AS ttl' );
        $this->db->select( 'kategori.nama AS kategori' );
        if( $id ) $this->db->where( $this->_table . '.id', $id);
        $this->db->join(
            'kategori',
            'kategori.id = ' . $this->_table . '.kategori_id',
            'join'
        );
        return $this->db->get( $this->_table );
    }
}

?>