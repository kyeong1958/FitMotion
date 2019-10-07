<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="/common/JEasyUICommon.jsp"%>

<html>

<head>

    <meta name="viewport" content="width=device-width" />

    <title>Index</title>

 

    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />

 

    <script src="~/Scripts/jquery-2.1.4.min.js"></script>

 

    @*서브모달*@

    <link href="~/Content/subModal_bs.sm.css" rel="stylesheet" />

    <script src="~/Scripts/subModal_bs.sm.js"></script>

 

    <script>       

        $(document).ready(function () {

           

            $('#my-submodal')

                .on('beforeShow', function () { console.log('Submodal beforeShow event'); })

                .on('show', function () { console.log('Submodal show event'); })

                .on('beforeHide', function () { console.log('Submodal beforeHide event'); })

                .on('hide', function () { console.log('Submodal hide event'); });

 

        });

 

    </script>

</head>

<body>

    <br />

    <div class="row">

        <div class="container">

                       

            <a href="#my-modal" class="btn btn-default" data-toggle="modal">Show Modal</a>

 

            <div class="modal fade" id="my-modal" style="height:auto;">

                <div class="modal-dialog">

                    <div class="modal-content">

                        <div class="modal-header">

                            <a href="#" class="close" data-dismiss="modal">

                                <span aria-hidden="true">&times;</span>

                                <span class="sr-only">Close</span>

                            </a>

                            <h4 class="modal-title">Your Account</h4>

                        </div>

                        <div class="modal-body">

 

                            <!-- SUBMODAL -->

                            <div class="modal submodal" id="my-submodal">

                                <div class="modal-dialog">

                                    <div class="modal-content">

                                        <div class="modal-body">

                                            <p class="text-center">Are you sure you want to close your account?<br />You won't be able to undo this.</p>

                                            <hr />

                                            <form class="form-horizontal">

                                                <div class="form-group">

                                                    <label class="col-sm-3 control-label" for="pass">Password:</label>

                                                    <div class="col-sm-9">

                                                        <input type="password" class="form-control" id="pass">

                                                    </div>

                                                </div>

                                            </form>

                                        </div>

                                        <div class="modal-footer">

                                            <button class="btn btn-default" data-dismiss="submodal" aria-hidden="true">Cancel</button>

                                            <button class="btn btn-danger" data-dismiss="submodal">Close Account</button>

                                        </div>

                                    </div>

                                </div>

                            </div>

                            <!-- /SUBMODAL -->

                           

                            @*부모 모달*@

                            <form class="form-horizontal">

                                <div class="form-group">

                                    <label class="col-sm-4 control-label">Your Account</label>

                                    <div class="col-sm-8">

                                        <a href="#my-submodal" role="button" class="btn btn-default btn-xs" data-toggle="submodal">서브모달</a>

                                        <p>Using a submodal to do something as serious as close an account is shitty UX, Jacob</p>                                       

                                        <p>Using a submodal to do something as serious as close an account is shitty UX, Jacob</p>                                       

                                        <p>Using a submodal to do something as serious as close an account is shitty UX, Jacob</p>                                       

                                        <p>Using a submodal to do something as serious as close an account is shitty UX, Jacob</p>                                       

                                        <p>Using a submodal to do something as serious as close an account is shitty UX, Jacob</p>                                       

                                        <p>Using a submodal to do something as serious as close an account is shitty UX, Jacob</p>                                       

                                    </div>

                                    <div class="col-sm-12"></div>

                                    <div class="col-sm-12"></div>

                                </div>                               

                            </form>

                        </div> <!-- /.modal-body -->

                    </div>

                </div>

            </div>

 

        </div>

    </div>

   

    <script src="~/Scripts/bootstrap.min.js"></script>      

</body>

</html>
