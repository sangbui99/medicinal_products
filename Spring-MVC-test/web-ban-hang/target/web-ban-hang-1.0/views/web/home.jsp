<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset="UTF-8">
  <title>Thái minh</title>
</head>

<body>

	<div id="banner" class="carousel slide " data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#banner" data-slide-to="0" class="active"></li>
            <li data-target="#banner" data-slide-to="1"></li>
            <li data-target="#banner" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <img src="<c:url value='/template/web/images/banner1.png'/>" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                </div>
            </div>
            <div class="carousel-item">
                <img src="<c:url value='/template/web/images/banner8.jpg'/>" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                </div>
            </div>
            <div class="carousel-item">
                <img src="<c:url value='/template/web/images/banner2.png'/>" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#banner" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#banner" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- chia lưới -->

    <div class="container my-chu">
        <div class="mb-5 mt-5 text-center">
            <h2>Sản phẩm được ưa chuộng</h2>
        <p>Đây là các sản phẩm của công ty đang được khách hàng tin yêu và ủng hộ</p>
        </div>
    </div>
    <div class="container "> 
        <div class="row">
          <div class="col-md-6 col-sm-12 mb-4">
           <div class="card text-center my-border">
             <img class="card-img-top" src="<c:url value='/template/web/images/sp2.png'/>" alt="">
             <div class="row">
                <div class="col-md-6 my-2">
                    <h3 class="card-title my-chu ">Khương Thảo Đan</h3>
                    <h4 class="card-text my-chu"> giá: 540.000đ</h4>
                </div>
                <div class="col-md-6 my-3">
                    <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                    <a href="cart.html" class="btn btn-sm btn-success mx-2">thêm vào giỏ hàng</a>
                </div>
               </p>
             </div>
           </div>
          </div> 
          <div class="col-md-6 col-sm-12 mb-4">
            <div class="card text-center my-border">
              <img class="card-img-top" src="<c:url value='/template/web/images/sp7.jpg'/>" alt="">
              <div class="row">
                 <div class="col-md-6 my-2">
                    <h3 class="card-title my-chu ">Cortripro</h3>
                    <h4 class="card-text my-chu"> giá: 620.000đ</h4>
                 </div>
                 <div class="col-md-6 my-3">
                     <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                     <a href="cart.html" class="btn btn-sm btn-success mx-2">thêm vào giỏ hàng</a>
                 </div>
                </p>
              </div>
            </div>
           </div>
           <div class="col-md-6 col-sm-12 mb-4">
            <div class="card text-center my-border">
            <img class="card-img-top" src="<c:url value='/template/web/images/sp1.jpg'/>" alt="">
              <div class="row">
                 <div class="col-md-6 my-2">
                    <h3 class="card-title my-chu ">Vương Bảo</h3>
                    <h4 class="card-text my-chu"> giá: 480.000đ</h4>
                 </div>
                 <div class="col-md-6 my-3">
                     <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                     <a href="cart.html" class="btn btn-sm btn-success mx-2">thêm vào giỏ hàng</a>
                 </div>
                </p>
              </div>
            </div>
           </div>
           <div class="col-md-6 col-sm-12 mb-4">
            <div class="card text-center my-border">
            <img class="card-img-top" src="<c:url value='/template/web/images/sp3.jpg'/>" alt="">
              <div class="row">
                 <div class="col-md-6 my-2">
                    <h3 class="card-title my-chu ">Tràng Phục Linh</h3>
                    <h4 class="card-text my-chu"> giá: 710.000đ</h4>
                 </div>
                 <div class="col-md-6 my-3">
                     <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                     <a href="cart.html" class="btn btn-sm btn-success mx-2">thêm vào giỏ hàng</a>
                 </div>
                </p>
              </div>
            </div>
           </div>
        </div>
    </div>

    <div class="container my-chu">
        <h2 class="mb-5 mt-5 text-center">Các sản phẩm khác đang được giảm giá</h2>
    </div>
    
    <div class="container my-5">
        <div class="row">
          <div class="col-md-3 col-sm-6 mb-3">
            <div class="card text-center my-border">
                <img class="card-img-top" src="images/spk1.png" alt="">    
                      <p class="card-title my-chu ">Ampelop</p>
                      <s class="card-text my-chu"> Old Price: 800.000đ</s>
                      <p class="card-text my-chu"> Sale Price: 730.000đ</p> 
                       <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                       <a href="cart.html" class="btn btn-sm btn-success mx-2 my-2">thêm vào giỏ hàng</a>
            </div>  
          </div>
          <div class="col-md-3 col-sm-6 mb-3">
            <div class="card text-center my-border">
                <img class="card-img-top" src="images/spk2.png" alt="">    
                      <p class="card-title my-chu ">Boganic</p>
                      <s class="card-text my-chu"> Old Price: 500.000đ </s>
                      <p class="card-text my-chu"> Sale Price: 390.000đ</p> 
                       <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                       <a href="cart.html" class="btn btn-sm btn-success mx-2 my-2">thêm vào giỏ hàng</a>
            </div>  
          </div>
          <div class="col-md-3 col-sm-6 mb-3">
            <div class="card text-center my-border">
                <img class="card-img-top" src="images/spk3.png" alt="">    
                      <p class="card-title my-chu ">Cebraton</p>
                      <s class="card-text my-chu"> Old Price: 620.000đ </s>
                      <p class="card-text my-chu"> Sale Price: 540.000đ</p> 
                       <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                       <a href="cart.html" class="btn btn-sm btn-success mx-2 my-2">thêm vào giỏ hàng</a>
            </div>  
          </div>
          <div class="col-md-3 col-sm-6 mb-3">
            <div class="card text-center my-border">
                <img class="card-img-top" src="images/spk4.png" alt="">    
                      <p class="card-title my-chu ">Nước rửa tay</p>
                      <s class="card-text my-chu"> Old Price: 20.000đ </s>
                      <p class="card-text my-chu"> Sale Price: 13.500đ</p> 
                       <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                       <a href="cart.html" class="btn btn-sm btn-success mx-2 my-2">thêm vào giỏ hàng</a>
            </div>  
          </div>
          <div class="col-md-3 col-sm-6 mb-3">
            <div class="card text-center my-border">
                <img class="card-img-top" src="images/spk5.png" alt="">    
                      <p class="card-title my-chu ">Evita</p>
                      <s class="card-text my-chu"> Old Price: 52.000đ </s>
                      <p class="card-text my-chu"> Sale Price: 39.000đ</p> 
                       <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                       <a href="cart.html" class="btn btn-sm btn-success mx-2 my-2">thêm vào giỏ hàng</a>
            </div>  
          </div>
          <div class="col-md-3 col-sm-6 mb-3">
            <div class="card text-center my-border">
                <img class="card-img-top" src="images/spk6.png" alt="">    
                      <p class="card-title my-chu ">Hà thủ Ô</p>
                      <s class="card-text my-chu"> Old Price: 420.000đ </s>
                      <p class="card-text my-chu"> Sale Price: 382.000đ</p> 
                       <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                       <a href="cart.html" class="btn btn-sm btn-success mx-2 my-2">thêm vào giỏ hàng</a>
            </div>  
          </div>
          <div class="col-md-3 col-sm-6 mb-3">
            <div class="card text-center my-border">
                <img class="card-img-top" src="images/spk7.png" alt="">    
                      <p class="card-title my-chu ">An thần</p>
                      <s class="card-text my-chu"> Old Price: 720.000đ </s>
                      <p class="card-text my-chu"> Sale Price: 590.000đ</p> 
                       <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                       <a href="cart.html" class="btn btn-sm btn-success mx-2 my-2">thêm vào giỏ hàng</a>
            </div>  
          </div>
          <div class="col-md-3 col-sm-6 mb-3">
            <div class="card text-center my-border">
                <img class="card-img-top" src="images/spk8.png" alt="">    
                      <p class="card-title my-chu ">Hoàn điều</p>
                      <s class="card-text my-chu"> Old Price: 120.000đ </s>
                      <p class="card-text my-chu"> Sale Price: 99.000đ</p> 
                       <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                       <a href="cart.html" class="btn btn-sm btn-success mx-2 my-2">thêm vào giỏ hàng</a>
            </div>  
          </div>
        </div>
    </div>

    <div class="container my-chu">
        <h2 class="mb-5 mt-5 text-center">Các sản phẩm mới ra mắt</h2>
    </div>
    
    <div class="container my-5">
        <div class="row">
          <div class="col-md-4 col-sm-6 mb-3">
            <div class="card text-center my-border">
                <img class="card-img-top" src="images/spk9.png" alt="">    
                      <h3 class="card-title my-chu ">Hoạt huyết</h3>
                      <h4 class="card-text my-chu"> Sale Price: 730.000đ</h4> 
                       <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                       <a href="cart.html" class="btn btn-sm btn-success mx-2 my-2">thêm vào giỏ hàng</a>
            </div>  
          </div>
          <div class="col-md-4 col-sm-6 mb-3">
            <div class="card text-center my-border">
                <img class="card-img-top" src="images/spk10.png" alt="">    
                      <h3 class="card-title my-chu ">Ích mẫu</h3>
                      <h4 class="card-text my-chu"> Sale Price: 730.000đ</h4> 
                       <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                       <a href="cart.html" class="btn btn-sm btn-success mx-2 my-2">thêm vào giỏ hàng</a>
            </div>  
          </div>
          <div class="col-md-4 col-sm-6 mb-3">
            <div class="card text-center my-border">
                <img class="card-img-top" src="images/spk11.png" alt="">    
                      <h3 class="card-title my-chu ">Lục vị địa hoàng</h3>
                      <h4 class="card-text my-chu"> Sale Price: 730.000đ</h4> 
                       <a data-toggle="modal" data-target="#modelId" class="btn btn-sm btn-info mx-2">chi tiết</a>
                       <a href="cart.html" class="btn btn-sm btn-success mx-2 my-2">thêm vào giỏ hàng</a>
            </div>  
          </div>
        </div>
    </div>
    
    <!-- footer -->
    
    <script>
        $('#banner').carousel({
            interval: 1000 * 3
        });
    </script>
</body>

</html>