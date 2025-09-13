<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Penugasan extends Model
{
    use HasFactory;
    protected $guarded = ["id"];

    public function items()
    {
        return $this->hasMany(PenugasanItem::class, 'penugasan_id')->orderBy('id', 'DESC');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
