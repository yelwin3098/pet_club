@extends('backlayout.backmain')

@section('title','Booking List')

@section('content')

<div class="wrapper">
   @include('backlayout.header')
  
   @include('backlayout.backsidebar')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{url('dashboard')}}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      @include('backlayout.second_header')
      <!-- /.row -->
      <!-- Main row -->
       <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Booking Tables</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form action="{{url('/all_booking_delete')}}" method="post">
                {{csrf_field()}}
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>#</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Phone_No</th>
                  <th>Service Or Package Name</th>
                  <th>Booking Time</th>
                  <th>Stauts</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
             @foreach($booking_lists as $b_list)
                <tr>
                  <td><input type="checkbox" name="delid[]" value="{{$b_list->id}}"></td>
                  <td>{{$b_list->owner_name}}</td>
                  <td>{{$b_list->email}}</td>
                  <td>{{$b_list->phone_no}}</td>
                  <td>{{$b_list->package}}</td>
                  <td>{{$b_list->created_at}}</td>
                  <td>
                     @if($b_list->pub_status==1)
                        <a class="item" data-toggle="tooltip" data-placement="top" href="{{url('/unactive_booking/'.$b_list->id)}}" title="Click To Confirm">
                        <span class="label label-danger" style="font-size: 15px;">Not Confirm</span>
                        </a> 
                     @else 
                          <a class="item" data-toggle="tooltip" data-placement="top" href="{{url('/active_booking/'.$b_list->id)}}" title="Click To Unconfirm">
                          <span class="label label-success" style="font-size: 15px;"> Confirm</span>
                          </a>
                     @endif  
                  </td>
                  <td>
                     @if($b_list->pub_status==1)
                     <div class="table-data-feature">
                       <a class="item" data-toggle="tooltip" data-placement="top" href="{{url('/sendmail/'.$b_list->id)}}" id="mail" title="Send Mail">
                              <i class="fa fa-envelope" style="font-size: 20px;"></i>
                          </a>/ 
                        <a class="item" data-toggle="tooltip" data-placement="top" href="{{url('/delete_booking/'.$b_list->id)}}" id="delete" title="Delete">
                            <i class="fa fa-trash" style="font-size: 20px;"></i>
                        </a>
                    </div>
                     @else 
                      <div class="table-data-feature"> 
                        <a class="item" data-toggle="tooltip" data-placement="top" href="{{url('/delete_booking/'.$b_list->id)}}" id="delete" title="Delete">
                            <i class="fa fa-trash" style="font-size: 20px;"></i>
                        </a>
                    </div> 
                     @endif  
                    
                  </td>
                 </tr>
                 @endforeach
                </tbody>
                <tfoot>
                <tr>
                   <th>Name</th>
                  <th>Email</th>
                  <th>Phone_No</th>
                  <th>Service Or Package Name</th>
                  <th>Stauts</th>
                  <th>Action</th>
                </tr>
                </tfoot>
              </table>
              <button type="submit" class="btn btn-danger"  onclick="return confirm('Are you sure');">Delete Selected</button>
             </form> 
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row (main row) -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  @include('backlayout.footer')
  <!-- Control Sidebar -->
  @include('backlayout.control_sidebar')

  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
@endsection