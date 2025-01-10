<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
class Angkot extends Model
{
    //
    use HasFactory;

    protected $fillable = [
        'kode_angkot',
        'warna_angkot',
        'trayek',
        'rute_jalan',
        'jam_berangkat',
        'jam_pulang',
        'tarif',
    ];
}
