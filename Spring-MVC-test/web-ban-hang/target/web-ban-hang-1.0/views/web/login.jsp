<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset="UTF-8">
  <title>Thái minh</title>
</head>

<body>

<div id="banner" class="carousel slide" data-ride="carousel">
        <img src="images/banner3.jpg" alt="">
    </div>

    <!-- chia lưới -->

    <div class="container my-5">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Dược Phẩm Thái Minh</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- Bootstrap CSS -->
                    <!-- jQuery first, then Bootstrap JS. -->
                    <!-- Nav tabs -->

                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" href="#login" data-toggle="tab">Đăng nhập</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#register" data-toggle="tab">Đăng ký</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active show" id="login">
                            <h3>Login Form</h3>
                            <c:if test="${param.incorrectAccount != null}">
					             <div class="alert alert-danger">	
							      Username or password incorrect
					              </div>
				            </c:if>
				            <c:if test="${param.accessDenied != null}">
					               <div class="alert alert-danger">	
							       you Not authorize
					               </div>
				            </c:if>
                            <form action="j_spring_security_check" id="formLogin" method="post">
                                <div class="form-group">
                                    <label for="">Tên tài khoản</label>
                                    <input type="text" name="j_username" id="userName" class="form-control"
                                        placeholder="Tên tài khoản">
                                </div>

                                <div class="form-group">
                                    <label for="">Mật khẩu</label>
                                    <input type="password" name="j_password" id="password" class="form-control"
                                        placeholder="Mật khẩu">
                                </div>
                                <!-- <div class="form-group">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" value="true" checked>
                                            Ghi nhớ mật khẩu
                                        </label>
                                    </div>
                                </div> -->
                                <button type="submit" class="btn btn-success">Đăng nhập</button>
                            </form>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="register">
                            <h3>Register Form</h3>
                            <form action="" method="post">
                                <div class="form-group">
                                    <label for="">Địa chỉ email/Số điện thoại</label>
                                    <input type="email" name="name" id="" class="form-control"
                                        placeholder="Địa chỉ email">
                                </div>

                                <div class="form-group">
                                    <label for="">Tên tài khoản</label>
                                    <input type="email" name="name" id="" class="form-control"
                                        placeholder="Tên tài khoản">
                                </div>

                                <div class="form-group">
                                    <label for="">Mật khẩu</label>
                                    <input type="text" name="name" id="" class="form-control"
                                        placeholder="Mật khẩu">
                                </div>
                                <div class="form-group">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" value="true" checked>
                                            Ghi nhớ mật khẩu
                                        </label>
                                    </div>
                                </div>
                                <button class="btn btn-success">Đăng ký</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</body>

</html>