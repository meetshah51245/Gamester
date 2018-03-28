<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>


<title>Gamester</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="description" content="Default Description"/>
<meta name="robots" content="INDEX,FOLLOW"/>
<link rel="icon" href="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/favicon.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/favicon.ico" type="image/x-icon"/>
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic&subset=latin,cyrillic' rel='stylesheet' type='text/css'>





<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/calendar-win2k-1.css"/>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/jquery.bxslider.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/photoswipe.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/bootstrap.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/extra_style.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/styles.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/responsive.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/superfish.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/camera.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/widgets.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/ajaxsearch.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/jquery.multiselect.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/prettify.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/cloud-zoom.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/catalogsale.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/ajaxlogin.css" media="all"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/print.css" media="print"/>






<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/jquery/jquery-migrate-1.2.1.min.js"></script>

<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/prototype/prototype.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/lib/ccard.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/prototype/validation.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/scriptaculous/builder.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/scriptaculous/effects.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/scriptaculous/dragdrop.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/scriptaculous/controls.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/scriptaculous/slider.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/varien/js.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/varien/form.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/mage/translate.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/mage/cookies.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/cmsmart/jquery/ajaxcart/cmsmart-ajaxcart.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/varien/product.js"></script>





<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/varien/configurable.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/calendar/calendar.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/calendar/calendar-setup.js"></script>





<script type="text/javascript" src="${pageContext.request.contextPath}/Resources/js/ajaxsearch.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/cmsmart/ajaxsearch/jquery-ul.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/cmsmart/ajaxsearch/prettify.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/cmsmart/ajaxsearch/jquery.multiselect.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/js/ecommerceteam/cloud-zoom.1.0.2.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/bootstrap.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/jquery.mobile.customized.min.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/jquery.carouFredSel-6.2.1.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/jquery.touchSwipe.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/jquery.unveil.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/cherry-fixed-parallax.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/tm-stick-up.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/responsiveCarousel.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/superfish.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/scripts.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/jquery-ui.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/base/default/js/bundle.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/carousel.js"></script>
<script type="text/javascript" src="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/js/youama/ajaxlogin/jquery-ui-1-10-4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Resources/js/ajaxlogin.js"></script>


<link rel="stylesheet" href="http://livedemo00.template-help.com/magento_52165/skin/frontend/default/theme312k/cmsmart/ajaxcart/css/default.css" type="text/css"/>
<style type="text/css">#ajaxcartmsg{background:#FFFFFF!important;border:5px solid #DDDDDD!important;}div#ajaxcart{margin-left:0px;width:320px;background:#FFFFFF;border:0px solid #DDDDDD!important;box-shadow:0 0 3px #DDDDDD}</style>
<script type="text/javascript">
//<![CDATA[
	var baseUrlAjax = 'http://livedemo00.template-help.com/magento_52165/';
	var cartlinkclass = 'ul.links a.top-link-cart';
	var ajaxConfirmMsgDelItem = 'Are you sure you would like to remove this item from the shopping cart?';
	var ajaxConfirmMsgEmpty = 'Empty cart?';
//]]	
</script>


<script type="text/javascript">//<![CDATA[
        var Translator = new Translate([]);
        //]]></script><script type="text/javascript">
/* <![CDATA[ */
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-7078796-5']);
_gaq.push(['_trackPageview']);



(function(b){
	(function(a){"__CF"in b&&"DJS"in b.__CF?b.__CF.DJS.push(a):"addEventListener"in b?b.addEventListener("load",a,!1):b.attachEvent("onload",a)}
		)
	(function(){"FB"in b&&"Event"in FB&&"subscribe"in FB.Event&&(FB.Event.subscribe("edge.create",function(a){_gaq.push(["_trackSocial","facebook","like",a])}),FB.Event.subscribe("edge.remove",function(a){_gaq.push(["_trackSocial","facebook","unlike",a])}),FB.Event.subscribe("message.send",function(a){_gaq.push(["_trackSocial","facebook","send",a])}));"twttr"in b&&"events"in twttr&&"bind"in twttr.events&&twttr.events.bind("tweet",function(a){if(a){var b;if(a.target&&a.target.nodeName=="IFRAME")a:{if(a=a.target.src){a=a.split("#")[0].match(/[^?=&]+=([^&]*)?/g);b=0;for(var c;c=a[b];++b)if(c.indexOf("url")===0){b=unescape(c.split("=")[1]);break a}}b=void 0}_gaq.push(["_trackSocial","twitter","tweet",b])}})})})(window);
/* ]]> */
</script>



<script type="text/javascript">


function checkCookie1() {
 var gids = Mage.Cookies.get("gids");
 if (gids != null) {
	 
 
	 var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		    	var data = xhttp.responseText;
		    	var ds = document.getElementById("block-content-compare");
		    	if(data!="none"){
		    		
		    		ds.innerHTML = data;
		    	}else{
		    		ds.innerHTML = "<p class='empty'>You have no items to compare.</p>";
		    	}
		    	
		    }
		  };
		  
	  document.getElementById("compare-count").value=gids;
			  xhttp.open("POST", "Compare", true);
			  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			  xhttp.send("gids="+gids);
			  
		  

 } 
      
}



</script>

</head>
<body class="ps-static  wishlist-index-index" onload="checkCookie1()">




    <% HttpSession s = request.getSession(false);
    ArrayList<String[]> list = (ArrayList<String[]>)request.getAttribute("list");
    Iterator iterator = list.iterator();
    
    String r = "";
    String ref= "";
    String logout = "";
    String wishlist="";
    String account="";
    String userid = "";
    String wishlistdata = "";
    if(s != null){
       r = (String)s.getAttribute("name");
       ref = (String)s.getAttribute("href");
       wishlist =(String)s.getAttribute("wishlist");
       account = (String)s.getAttribute("account");
       logout = (String)s.getAttribute("logout");
       userid = (String)s.getAttribute("userid");
       wishlistdata = (String)s.getAttribute("wishlistData");
       if(r == null){
    	   r= "";
       }
%>
    
    
    
    
    
    
    
<div class="wrapper ps-static en-lang-class">
<noscript>
<div class="global-site-notice noscript">
<div class="notice-inner">
<p>
<strong>JavaScript seems to be disabled in your browser.</strong><br/>
You must have JavaScript enabled in your browser to utilize the functionality of this website. </p>
</div>
</div>
</noscript>
<div class="page">
<div class="main_wrapper">
<div class="shadow"></div>



<div class="swipe-left"></div>



<div class="swipe">
<div class="swipe-menu">
<a href="index.jsp" title="Home" class="home-link">Home</a>
<ul class="links">
<li class="first"><a href="index.jsp" title="Home">Home</a></li>
<li><a href="<% if(account!= null)
{
    out.print(account);
}else{
    out.print("login.jsp");
}
%>" title="My Account">My Account</a></li>


<li><a href="<% if(wishlist!= null)
{
    out.print(wishlist);
}else{
    out.print("login.jsp");
}
%>" title="My Wishlist">My Wishlist</a></li>




<li class="last"><a href="<% if(ref!= null)
{
    out.print(ref);
}else{
    out.print("http://dfasgsdf/customer/account/login/");
}
%>" title="Log In" ><% if(logout != null)
{
    out.print(logout);
}else{
    out.print("Log In");
}%></a></li>
</ul>




</div>
</div>
<div class="top-icon-menu">
<div class="swipe-control"><i class="fa fa-align-justify"></i></div>
<div class="top-search"><i class="fa fa-search"></i></div>
<span class="clear"></span>
</div>



<!-- Header -->



<div class="header-container">
<div class="container">
<div class="row">
<div class="col-xs-12">
<div class="header">
<h1 class="logo"><a href="index.jsp" title="Gamester"><img src="${pageContext.request.contextPath}/Resources/images/LOGO1.gif" alt="Gamester"/></a></h1>
<div class="right_head">
    
    
    
    
    
<p class="welcome-msg">Welcome <%=r%> </p>




<div class="header-buttons">




</div>




<ul class="links">
<li class="first"><a href="index.jsp" title="Home">Home</a></li>
<li><a href="<% if(account!= null)
{
    out.print(account);
}else{
    out.print("login.jsp");
}
%>" title="My Account">My Account</a></li>



<li><a href="<% if(wishlist!= null)
{
    out.print(wishlist);
}else{
    out.print("login.jsp");
}
%>" title="My Wishlist">My Wishlist</a></li>

<li class=" last"><a href="<% if(ref != null)
{
    out.print(ref);
}else{
    out.print("http://dfererve/customer/account/login/");
}
%>" title="Log In" ><% if(logout != null)
{
    out.print(logout);
}else{
    out.print("Log In");
}
}%></a></li>
</ul>
 
 
<form id="search_mini_form" action="Search" method="get">
<div class="form-search">
<label for="search">Search:</label>
<span class="p-reletive">
<input type="hidden" name="form" value="form"/>
<input id="search" type="text" placeholder="Search" name="q" class="input-text"/>
<span class="loading"></span>
<span class="clear-bt"></span>
</span>
<button type="submit" title="Search" class="button"><span><span>Search</span></span></button>
<div id="search_autocomplete" class="search-autocomplete" style="display: none;"></div>
</div>
</form>
<style>.search-autocomplete{width:400px;border-color:#FFFFFFF;border-width:1px;border-style:solid;}
.search-autocomplete .suggested a{color:#8e0900;}
.search-autocomplete .suggested a span{color:#9b0c0e;}
.search-autocomplete .suggested a:hover{color:#ff816e;}
.search-autocomplete .ajaxsearch .preview .title{color:#333333;}
.search-autocomplete .ajaxsearch .preview .product_cat{color:#679100;}
.search-autocomplete .ajaxsearch .preview .product_cat a:hover{color:#fc00cd;}
.search-autocomplete .ajaxsearch .preview .description{color:#000000;}
.search-autocomplete .ajaxsearch .preview .price,.search-autocomplete .ajaxsearch .preview .special-price{color:#959595;font-weight:normal;}
.search-autocomplete .ajaxsearch .preview .regular-price,.search-autocomplete .ajaxsearch .preview .regular-price .price{color:#959595;}
.search-autocomplete .ajaxsearch img{border:1px solid #bbbbbb;}
.search-autocomplete .category .preview .title{color:#414141;}
.search-autocomplete .category .preview .description{color:#545454;}
.search-autocomplete .page_rs .preview .title{color:#414141;}
.search-autocomplete .page_rs .preview .description{color:#545454;}
.search-autocomplete .no-results{color:#545454;}
.search-autocomplete .ajaxsearch .reviews_count{color:#e24000;}
.search-autocomplete span.highlight{font-size:12;color:#ff0000;}
.search-autocomplete li.title{background:#0e0200;color:#e9f5ff}
.search-autocomplete li.preview:hover,.search-autocomplete li.suggest:hover{background:#fafbff;}.search-autocomplete .meta_data{width:315px}.ui-state-default,.ui-widget-content .ui-state-default,.ui-widget-header .ui-state-default{background:#ffffff;}.ui-state-hover,.ui-widget-content .ui-state-hover,.ui-widget-header .ui-state-hover,.ui-state-focus,.ui-widget-content .ui-state-focus,.ui-widget-header .ui-state-focus,.ui-state-active{background:#fafafa;}.ui-state-active,.ui-widget-content .ui-state-active,.ui-widget-header .ui-state-active,.ui-state-active a,.ui-state-active a:link,.ui-state-active a:visited{color:#000000}.ui-widget-header{background:#000000}</style>
<script type="text/javascript">
    var baseUrl = 'http://Gamester/';
    var minchar = 3;
    var t_request = 500                      
</script>
<div class="block-cart-header">

 
<div class="block-content">
</div>
</div>
</div>
<div class="clear"></div>
<div class="skip-links"> <span href="#header-account" class="skip-link skip-account"></span></div>
<div id="header-account" class="skip-content"></div>
</div>
</div>
</div>
<div class="clear"></div>
</div>
</div>




<!-- Nav Menu -->



<div class="nav-container">
<div class="container">
<div class="row">
<div class="col-xs-12">
<ul id="nav" class="sf-menu">
	<li class="level0 nav-1 first level-top"><a href="${pageContext.request.contextPath}/Game" class ="level-top"><span>Games</span></a>
	</li>
<li class="level0 nav-2 level-top parent"><a href="#" class="level-top"><span>Categories</span></a>
	<ul class="level0">
		<li class="level1 nav-2-1 first"><a href="Categories?category=Action"><span>Action</span></a>
		</li>
		<li class="level1 nav-2-2"><a href="Categories?category=Adventure"><span>Adventure</span></a>
		</li>
		<li class="level1 nav-2-3"><a href="Categories?category=Casual"><span>Casual</span></a>
		</li>
		<li class="level1 nav-2-4"><a href="Categories?category=Fighting"><span>Fighting</span></a>
		</li>
		<li class="level1 nav-2-5"><a href="Categories?category=Role playing"><span>Role playing</span></a>
		</li>
		<li class="level1 nav-2-6"><a href="Categories?category=Puzzle"><span>Puzzle</span></a>
		</li>
		<li class="level1 nav-2-7"><a href="Categories?category=Racing"><span>Racing</span></a>
		</li>
		<li class="level1 nav-2-8"><a href="Categories?category=Simulation"><span>Simulation</span></a>
		</li>
		<li class="level1 nav-2-9"><a href="Categories?category=Sport"><span>Sports</span></a>
		</li>
		<li class="level1 nav-2-10 last"><a href="Categories?category=Strategy"><span>Strategy</span></a>
		</li>
	</ul>
</li>
<li class="level0 nav-3 level-top parent"><a href="#" class="level-top"><span>Platform</span></a>
	<ul class="level0">
		<li class="level1 nav-3-1 first"><a href="Platform?platform=PC"><span>PC</span></a>
		</li>
		<li class="level1 nav-3-2 parent"><a href="#"><span>Play Station</span></a>
			<ul class="level1">
				<li class="level2 nav-3-2-1 first"><a href="Platform?platform=PS3"><span>PS 3</span></a>
				</li>
				<li class="level2 nav-3-2-2 last"><a href="Platform?platform=PS4"><span>PS 4</span></a></li>
			</ul>
		</li>
		<li class="level1 nav-3-3 parent"><a href="#"><span>Xbox</span></a>
			<ul class="level1">
				<li class="level2 nav-3-3-1 first"><a href="Platform?platform=XboxOne"><span>XBOX ONE</span></a>
				</li>
				<li class="level2 nav-3-3-2 last"><a href="Platform?platform=Xbox360"><span>XBOX 360</span></a>
				</li>
			</ul>
		</li>
		<li class="level1 nav-3-4"><a href="Platform?platform=WiiU"><span>WiiU</span></a>
		</li>
		<li class="level1 nav-3-5 last"><a href="Platform?platform=3DS"><span>3DS</span></a>
		</li>
	</ul>
</li>
<li class="level0 nav-4 level-top"><a href="Hardware?action=hardware" class="level-top"><span>Hardware</span></a>
</li> 
<li class="level0 nav-5 last level-top"><a href="News?page=1" class="level-top"><span>News</span></a>
</li> 
</ul>









<div class="sf-menu-block">
<div id="menu-icon">Menu</div>
<ul class="sf-menu-phone">

<li class="level0 nav-1 first level-top"><a href="${pageContext.request.contextPath}/Game" class ="level-top"><span>Games</span></a>
	</li>
<li class="level0 nav-2 level-top parent"><a href="#" class="level-top"><span>Categories</span></a>
	<ul class="level0">
		<li class="level1 nav-2-1 first"><a href="Categories?category=Action"><span>Action</span></a>
		</li>
		<li class="level1 nav-2-2"><a href="Categories?category=Adventure"><span>Adventure</span></a>
		</li>
		<li class="level1 nav-2-3"><a href="Categories?category=Casual"><span>Casual</span></a>
		</li>
		<li class="level1 nav-2-4"><a href="Categories?category=Fighting"><span>Fighting</span></a>
		</li>
		<li class="level1 nav-2-5"><a href="Categories?category=Role playing"><span>Role playing</span></a>
		</li>
		<li class="level1 nav-2-6"><a href="Categories?category=Puzzle"><span>Puzzle</span></a>
		</li>
		<li class="level1 nav-2-7"><a href="Categories?category=Racing"><span>Racing</span></a>
		</li>
		<li class="level1 nav-2-8"><a href="Categories?category=Simulation"><span>Simulation</span></a>
		</li>
		<li class="level1 nav-2-9"><a href="Categories?category=Sport"><span>Sports</span></a>
		</li>
		<li class="level1 nav-2-10 last"><a href="Categories?category=Strategy"><span>Strategy</span></a>
		</li>
	</ul>
</li>
<li class="level0 nav-3 level-top parent"><a href="#" class="level-top"><span>Platform</span></a>
	<ul class="level0">
		<li class="level1 nav-3-1 first"><a href="Platform?platform=PC"><span>PC</span></a>
		</li>
		<li class="level1 nav-3-2 parent"><a href="#"><span>Play Station</span></a>
			<ul class="level1">
				<li class="level2 nav-3-2-1 first"><a href="Platform?platform=PS3"><span>PS 3</span></a>
				</li>
				<li class="level2 nav-3-2-2 last"><a href="Platform?platform=PS4"><span>PS 4</span></a></li>
			</ul>
		</li>
		<li class="level1 nav-3-3 parent"><a href="#"><span>Xbox</span></a>
			<ul class="level1">
				<li class="level2 nav-3-3-1 first"><a href="Platform?platform=XboxOne"><span>XBOX ONE</span></a>
				</li>
				<li class="level2 nav-3-3-2 last"><a href="Platform?platform=Xbox360"><span>XBOX 360</span></a>
				</li>
			</ul>
		</li>
		<li class="level1 nav-3-4"><a href="Platform?platform=WiiU"><span>WiiU</span></a>
		</li>
		<li class="level1 nav-3-5 last"><a href="Platform?platform=3DS"><span>3DS</span></a>
		</li>
	</ul>
</li>
<li class="level0 nav-4 level-top"><a href="Hardware?action=hardware" class="level-top"><span>Hardware</span></a>
</li> 
<li class="level0 nav-5 last level-top"><a href="News?page=1" class="level-top"><span>News</span></a>
</li> 
</ul>

</div>
</div>
</div>
<div class="clear"></div>
</div>
</div>





<div class="main-container col2-left-layout">
<div class="container">
<div class="row">
<div class="col-xs-12">
<div class="main">
<div class="row">
<div class="col-main col-xs-12 col-sm-9">
<div class="padding-s">

<div class="my-account"><div class="my-wishlist">
<div class="page-title title-buttons">
<h1>My Wishlist</h1>
</div>

<fieldset>
<table class="data-table" id="wishlist-table">
<thead>
<tr>
<th></th>
<th>Product Details</th>
<th>Price</th>
<th></th>
</tr>
</thead>
<tbody>
<%while(iterator.hasNext()) { 
  String item[] = (String[])iterator.next(); %>
<tr id="row<%=item[5]%>">
<td><a class="product-image" href="GameDetail?id=<%=item[0] %>" title="<%=item[1]%>">
<img src="<%=item[3] %>" width="100" height="100" alt="<%=item[1]%>"/>
</a>
</td>
<td><h3 class="product-name"><a href="GameDetail?id=<%=item[0] %>" title="<%=item[1]%>"><%=item[1]%></a></h3>
<div class="description std"><div class="inner"><%=item[4] %> </div></div>

</td>
<td><div class="cart-cell">
<div class="price-box">
<span class="regular-price" id="product-price-7">
<span class="price">$<%=item[2] %></span> </span>
</div>


</div>
</td>
<td><a href="#" onclick="return removedata('<%=item[5] %>');" title="Remove Item" class="btn-remove btn-remove2">Remove item</a>
</td>
</tr>
<%} %>
</tbody>
</table>
<script type="text/javascript">
//<![CDATA[
    decorateTable('wishlist-table');

        function removedata(wid){
        	
        	
        	
        	  if(confirmRemoveWishlistItem()){
        		
        			  var xhttp = new XMLHttpRequest();
        			  xhttp.onreadystatechange = function() {
        				    if (xhttp.readyState == 4 && xhttp.status == 200) {
        				    	var data = xhttp.responseText;
        				    	if(data!='none'){
        				    		if(data!='unsuccessful'){
        				    		var ws = document.getElementById("wishlist-sidebar-block");
        					    	ws.innerHTML=data;
        					    	var row = document.getElementById("row"+wid);
        					    	row.remove();
        				    		}
        				    	}else{
        				    		var ws = document.getElementById("wishlist-sidebar-block");
        					    	ws.innerHTML="<p class='empty'>You have no items in wishlist.</p>";
        					    	var row = document.getElementById("row"+wid);
        					    	row.remove();
        				    		
        				    	}
        				    	
        				    }
        				  };
        				  
        				  
        			  xhttp.open("POST", "Wishlist?form=delete", true);
        			  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        			  xhttp.send("uid="+<%=userid%>+"&wid="+wid);
        			  
        			
        	} 
        	return false; 
        	}
        
        
            
        function confirmRemoveWishlistItem() {
            return confirm('Are you sure you want to remove this product from your wishlist?');
        }
        
        
        function confirmRemoveCompare(){
        	return confirm('Are you sure you would like to remove this item from the compare products?');
        }
        
        function removeCompare(gid){
        	if(confirmRemoveCompare()){
        		var r = document.getElementById("compare"+gid);
        		
        		var c = "";
        		var i = document.getElementById("compare-count").value;
        		
        		var s = i.split(";");
        		
        		for(j=0;j<s.length-1;j++){
        			
        			if(gid!=s[j]){
        				c = c+s[j]+";";
        			}
        		}
        		
        		if((c.split(";"))[0] == ""){
        			document.getElementById("block-content-compare").innerHTML="<p class='empty'>You have no items to compare.</p>";
        			c="";
        		}
        		Mage.Cookies.set("gids",c);
        		document.getElementById("compare-count").value=c;
        		r.remove();
        	}
        	
        	return false;
        }
        
        function removeAll(){
        	if(confirm('Are you sure you would like to remove all products from your comparison?')){
        		document.getElementById("block-content-compare").innerHTML="<p class='empty'>You have no items to compare.</p>";
        		Mage.Cookies.set("gids","");
        		document.getElementById("compare-count").value="";
        	}
        	return false;
        }
        
        
        
        //]]>
</script>
<script type="text/javascript">decorateTable('wishlist-table')</script>

</fieldset>


</div>
</div> </div>
</div>
<div class="col-left sidebar col-xs-12 col-sm-3"><div class="block block-account">
<div class="block-title">
<strong><span>My Account</span></strong>
</div>
<div class="block-content">
<ul>

<li><a href="<% if(account!= null)
{
    out.print(account);
}else{
    out.print("login.jsp");
}
%>">Account Information</a></li>



<li class="current"><strong>My Wishlist</strong></li>

</ul>
</div>
</div>




<div class="block block-wishlist">
<div class="block-title">
<strong><span>My Wishlist </span></strong>
</div>
<div class="block-content" id="wishlist-sidebar-block">
<% if(wishlistdata!=null && wishlistdata!="none"){
	out.print(wishlistdata);
}else{
	out.print("<p class='empty'>You have no items in wishlist.</p>");
}
%>

</div>

</div>
<div class="block block-list block-compare">
<div class="block-title">
<strong><span>Compare Products
</span></strong>
</div>
<div class="block-content" id="block-content-compare">
<p class='empty'>You have no items to compare.</p>
</div>
</div>
<input type="hidden" value="" id="compare-count"/>
<script type="text/javascript">
//<![CDATA[
    function validatePollAnswerIsSelected()
    {
        var options = $$('input.poll_vote');
        for( i in options ) {
            if( options[i].checked == true ) {
                return true;
            }
        }
        return false;
    }
//]]>
</script>
<div class="block block-poll">
<div class="block-title">
<strong><span>Community Poll</span></strong>
</div>
<form id="pollForm" action="#" method="post" onsubmit="return validatePollAnswerIsSelected();">
<div class="block-content">
<p class="block-subtitle">What is the main reason for you to purchase products online?</p>
<ul id="poll-answers">
<li>
<input type="radio" name="vote" class="radio poll_vote" id="vote_1" value="1"/>
<span class="label"><label for="vote_1">More convenient shipping and delivery</label></span>
</li>
<li>
<input type="radio" name="vote" class="radio poll_vote" id="vote_2" value="2"/>
<span class="label"><label for="vote_2">Lower price</label></span>
</li>
<li>
<input type="radio" name="vote" class="radio poll_vote" id="vote_3" value="3"/>
<span class="label"><label for="vote_3">Bigger choice</label></span>
</li>
<li>
<input type="radio" name="vote" class="radio poll_vote" id="vote_4" value="4"/>
<span class="label"><label for="vote_4">Centralized product search procedure (without having to leave your home)</label></span>
</li>
<li>
<input type="radio" name="vote" class="radio poll_vote" id="vote_5" value="5"/>
<span class="label"><label for="vote_5">Payments security</label></span>
</li>
<li>
<input type="radio" name="vote" class="radio poll_vote" id="vote_6" value="6"/>
<span class="label"><label for="vote_6">30-day Money Back Guarantee</label></span>
</li>
<li>
<input type="radio" name="vote" class="radio poll_vote" id="vote_7" value="7"/>
<span class="label"><label for="vote_7">Other.</label></span>
</li>
</ul>
<script type="text/javascript">decorateList('poll-answers');</script>
<div class="actions">
<button type="submit" title="Vote" class="button"><span><span>Vote</span></span></button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>




</div>
</div>
 


</body>
</html>
