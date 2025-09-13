@extends('templates.dashboard')
@section('isi')
    <div class="row">
        <div class="col-md-12 m project-list">
            <div class="card">
                <div class="row">
                    <div class="col-md-6 p-0 d-flex mt-2">
                        <h4>{{ $title }}</h4>
                    </div>
                    <div class="col-md-6 p-0">
                        <a href="{{ url('/reimbursement') }}" class="btn btn-danger btn-sm ms-2">Back</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="card">
                <form method="post" class="p-4" action="{{ url('/reimbursement/update/'.$reimbursement->id) }}" enctype="multipart/form-data">
                    @method('PUT')
                    @csrf
                        <div class="form-group">
                            <label for="tanggal" class="float-left">Tanggal</label>
                            <input type="datetime" class="form-control @error('tanggal') is-invalid @enderror" id="tanggal" name="tanggal" autofocus value="{{ old('tanggal', $reimbursement->tanggal) }}">
                            @error('tanggal')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="user_id" class="float-left">Nama</label>
                            <select class="form-control selectpicker @error('user_id') is-invalid @enderror" id="user_id" name="user_id" data-live-search="true">
                                <option value="">-- Pilih --</option>
                                @foreach ($user as $us)
                                    @if(old('user_id', $reimbursement->user_id) == $us->id)
                                        <option value="{{ $us->id }}" selected>{{ $us->name }}</option>
                                    @else
                                        <option value="{{ $us->id }}">{{ $us->name }}</option>
                                    @endif
                                @endforeach
                            </select>
                            @error('user_id')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="event" class="float-left">Event</label>
                            <input type="text" class="form-control @error('event') is-invalid @enderror" id="event" name="event" value="{{ old('event', $reimbursement->event) }}">
                            @error('event')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="kategori_id" class="float-left">Kategori</label>
                            <select class="form-control selectpicker @error('kategori_id') is-invalid @enderror" id="kategori_id" name="kategori_id" data-live-search="true">
                                <option value="">-- Pilih --</option>
                                @foreach ($kategori as $kat)
                                    @if(old('kategori_id', $reimbursement->kategori_id) == $kat->id)
                                        <option value="{{ $kat->id }}" selected>{{ $kat->name }}</option>
                                    @else
                                        <option value="{{ $kat->id }}">{{ $kat->name }}</option>
                                    @endif
                                @endforeach
                            </select>
                            @error('kategori_id')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="jumlah" class="float-left">Jumlah</label>
                            <input type="text" class="form-control money @error('jumlah') is-invalid @enderror" id="jumlah" name="jumlah" value="{{ old('jumlah', $reimbursement->jumlah) }}">
                            @error('jumlah')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="qty" class="float-left">Qty</label>
                            <input type="text" class="form-control money @error('qty') is-invalid @enderror" id="qty" name="qty" value="{{ old('qty', $reimbursement->qty) }}">
                            @error('qty')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="total" class="float-left">Total</label>
                            <input type="text" readonly class="form-control money @error('total') is-invalid @enderror" id="total" name="total" value="{{ old('total', $reimbursement->total) }}">
                            @error('total')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>

                        <div class="table-responsive p-4">
                            <table id="tablemultiple" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Nama</th>
                                        <th>Fee</th>
                                        <th class="text-center">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $old = session()->getOldInput();
                                    @endphp
                                    @if(isset($old['user_id_item']))
                                        @foreach ($old['user_id_item'] as $key => $detailName)
                                            <tr id="multiple{{ $key }}">
                                                <td>
                                                    <select style="width: 130px" class="user_id_item form-control" name="user_id_item[]">
                                                        <option value="">-- Pilih --</option>
                                                        @foreach ($user as $us)
                                                            @if(old('user_id_item')[$key] == $us->id)
                                                                <option value="{{ $us->id }}" selected>{{ $us->name }}</option>
                                                            @else
                                                                <option value="{{ $us->id }}">{{ $us->name }}</option>
                                                            @endif
                                                        @endforeach
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="text" class="form-control money fee" id="fee" name="fee[]" value="{{ old('fee')[$key] }}">
                                                    @error('fee')
                                                        <div class="invalid-feedback">
                                                            {{ $message }}
                                                        </div>
                                                    @enderror
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-sm btn-danger delete"><i class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @else
                                        @foreach ($reimbursement->items as $key => $item)
                                            <tr id="multiple{{ $key }}">
                                                <td>
                                                    <select class="user_id_item form-control" name="user_id_item[]">
                                                        <option value="">-- Pilih --</option>
                                                        @foreach ($user as $us)
                                                            @if($item->user_id == $us->id)
                                                                <option value="{{ $us->id }}" selected>{{ $us->name }}</option>
                                                            @else
                                                                <option value="{{ $us->id }}">{{ $us->name }}</option>
                                                            @endif
                                                        @endforeach
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="text" class="form-control money fee" id="fee" name="fee[]" value="{{ $item->fee }}">
                                                </td>
                                                <td class="text-center">
                                                    <a class="btn btn-sm btn-danger delete"><i class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @endif
                                </tbody>
                            </table>
                            <a id="add_row" class="btn btn-sm btn-success float-end mt-2">+ Tambah</a>
                        </div>

                        <div class="form-group">
                            <label for="sisa">Sisa</label>
                            <input type="text" readonly class="form-control money @error('sisa') is-invalid @enderror" id="sisa" name="sisa" value="{{ old('sisa', $reimbursement->sisa) }}">
                            @error('sisa')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="status" class="float-left">Status</label>
                            <input type="text" class="form-control @error('status') is-invalid @enderror" id="status" readonly name="status" value="{{ old('status', $reimbursement->status) }}">
                            @error('status')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="file_path" class="form-label">File</label>
                            <input class="form-control @error('file_path') is-invalid @enderror" type="file" id="file_path" name="file_path">
                            @error('file_path')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>

                        <input type="hidden" name="kategori_name" id="kategori_name" value="{{ old('kategori_name', $reimbursement->kategori->name ?? '') }}">
                    <button type="submit" class="btn btn-primary float-right">Submit</button>
                </form>
            </div>
        </div>
    </div>

    @push('script')
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <script>
            function replaceCurrency(n) {
                if (n) {
                    return n.replace(/\,/g, '');
                }
            }
            $(document).ready(function(){
                $('.money').mask('000,000,000,000,000', {
                    reverse: true
                });

                $('#kategori_id').select2();
                $('.user_id_item').select2();

                var row_number = 1;
                var temp_row_number = row_number-1;
                $("#add_row").click(function(e) {
                    e.preventDefault();
                    var new_row_number = row_number - 1;
                    var table = document.getElementById("tablemultiple");
                    var tbodyRowCount = table.tBodies[0].rows.length;
                    $(".user_id_item").select2('destroy');
                    new_row = $('#tablemultiple tbody tr:last').clone();
                    new_row.find("input").val("").end();
                    new_row.find("select").val("").end();
                    $('#tablemultiple').append(new_row);
                    $('#tablemultiple tbody tr:last').attr('id','multiple'+(tbodyRowCount));
                    row_number++;
                    $('.user_id_item').select2();
                    $('.money').mask('000,000,000,000,000', {
                        reverse: true
                    });
                    temp_row_number = row_number - 1;
                });

                $('body').on('click', '.delete', function (event) {
                    var table = document.getElementById("tablemultiple");
                    var tbodyRowCount = table.tBodies[0].rows.length;
                    if (tbodyRowCount <= 1) {
                        alert('Cannot delete if only 1 row!');
                    } else {
                        if (confirm('Are you sure you want to delete?')) {
                            $(this).closest('tr').remove();
                            let total = $('#total').val() ? parseFloat(replaceCurrency($('#total').val())) : 0;
                            let sum_fee = 0;
                            $('.fee').each(function () {
                                sum_fee += $(this).closest('tr').find('td:eq(1) input').val() ?  parseFloat(replaceCurrency($(this).closest('tr').find('td:eq(1) input').val())) : 0;
                            });
                            $('#sisa').val(accounting.formatMoney(total - sum_fee, '', 0, ",", "."));
                        }
                    }
                });

                $('body').on('keyup click', '.fee', function (event) {
                    let total = $('#total').val() ? parseFloat(replaceCurrency($('#total').val())) : 0;
                    let sum_fee = 0;
                    $('.fee').each(function () {
                        sum_fee += $(this).closest('tr').find('td:eq(1) input').val() ?  parseFloat(replaceCurrency($(this).closest('tr').find('td:eq(1) input').val())) : 0;
                    });
                    $('#sisa').val(accounting.formatMoney(total - sum_fee, '', 0, ",", "."));
                });

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                let kategori_name = $('#kategori_name').val();
                if (kategori_name == 'Lain-lain') {
                    $("#jumlah").prop('readonly', false);
                } else {
                    $("#jumlah").prop('readonly', true);
                }


                $('#kategori_id').on('change', function(){
                    let kategori_id = $('#kategori_id').val();
                    $.ajax({
                        type : 'POST',
                        url : "{{ url('/reimbursement/getKategori') }}",
                        data :  {kategori_id:kategori_id},
                        cache : false,
                        success: function(data){
                            $('#kategori_name').val(data.name);
                            let qty = $('#qty').val() ? parseFloat($('#qty').val()) : 0;
                            let sum_fee = 0;
                            $('.fee').each(function () {
                                sum_fee += $(this).closest('tr').find('td:eq(1) input').val() ?  parseFloat(replaceCurrency($(this).closest('tr').find('td:eq(1) input').val())) : 0;
                            });
                            if (data.name == 'Lain-lain') {
                                $('#jumlah').val(accounting.formatMoney(0, '', 0, ",", "."));
                                $('#total').val(accounting.formatMoney(0, '', 0, ",", "."));
                                $('#sisa').val(accounting.formatMoney(0, '', 0, ",", "."));
                                $("#jumlah").prop('readonly', false);
                            } else {
                                let total = parseFloat(data.jumlah) * qty;
                                let sisa = total - sum_fee;
                                $('#jumlah').val(accounting.formatMoney(data.jumlah, '', 0, ",", "."));
                                $('#total').val(accounting.formatMoney(total, '', 0, ",", "."));
                                $("#jumlah").prop('readonly', true);
                                $('#sisa').val(accounting.formatMoney(sisa, '', 0, ",", "."));
                            }
                        },
                        error: function(data){
                            console.log('error:' ,data);
                        }
                    })
                })

                $('#jumlah').on('keyup', function(){
                    let jumlah = $('#jumlah').val() ? parseFloat(replaceCurrency($('#jumlah').val())) : 0;
                    let qty = $('#qty').val() ? parseFloat($('#qty').val()) : 0;
                    let total = jumlah * qty;
                    $('#total').val(accounting.formatMoney(total, '', 0, ",", "."));

                    let sum_fee = 0;
                    $('.fee').each(function () {
                        sum_fee += $(this).closest('tr').find('td:eq(1) input').val() ?  parseFloat(replaceCurrency($(this).closest('tr').find('td:eq(1) input').val())) : 0;
                    });
                    let sisa = total - sum_fee;
                    $('#sisa').val(accounting.formatMoney(sisa, '', 0, ",", "."));
                })

                $('#qty').on('keyup change', function(){
                    let jumlah = $('#jumlah').val() ? parseFloat(replaceCurrency($('#jumlah').val())) : 0;
                    let qty = $('#qty').val() ? parseFloat($('#qty').val()) : 0;
                    let total = jumlah * qty;
                    $('#total').val(accounting.formatMoney(total, '', 0, ",", "."));

                    let sum_fee = 0;
                    $('.fee').each(function () {
                        sum_fee += $(this).closest('tr').find('td:eq(1) input').val() ?  parseFloat(replaceCurrency($(this).closest('tr').find('td:eq(1) input').val())) : 0;
                    });
                    let sisa = total - sum_fee;
                    $('#sisa').val(accounting.formatMoney(sisa, '', 0, ",", "."));
                })
            });
        </script>
    @endpush
@endsection
