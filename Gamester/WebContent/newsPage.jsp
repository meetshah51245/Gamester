<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>News</title>
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

<body class="ps-static  catalog-category-view categorypath-games-html category-games"  onload="checkCookie1()"  >








<% HttpSession s = request.getSession(false);
Map<String, ArrayList<String>> map = (Map<String, ArrayList<String>>)request.getAttribute("news");
ArrayList<String> link = map.get("link");
ArrayList<String> image = map.get("image");
ArrayList<String> head = map.get("head");
ArrayList<String> description = map.get("description");
String number = (String)request.getAttribute("page");

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
    out.print("http://fgcgf/customer/account/login/");
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
    out.print("http://fcjvgvhji/customer/account/login/");
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
<style>.search-autocomplete{width:400px;border-color:#FFFFFFF;border-width:1px;border-style:solid;}.search-autocomplete .suggested a{color:#8e0900;}.search-autocomplete .suggested a span{color:#9b0c0e;}.search-autocomplete .suggested a:hover{color:#ff816e;}.search-autocomplete .ajaxsearch .preview .title{color:#333333;}.search-autocomplete .ajaxsearch .preview .product_cat{color:#679100;}.search-autocomplete .ajaxsearch .preview .product_cat a:hover{color:#fc00cd;}.search-autocomplete .ajaxsearch .preview .description{color:#000000;}.search-autocomplete .ajaxsearch .preview .price,.search-autocomplete .ajaxsearch .preview .special-price{color:#959595;font-weight:normal;}.search-autocomplete .ajaxsearch .preview .regular-price,.search-autocomplete .ajaxsearch .preview .regular-price .price{color:#959595;}.search-autocomplete .ajaxsearch img{border:1px solid #bbbbbb;}.search-autocomplete .category .preview .title{color:#414141;}.search-autocomplete .category .preview .description{color:#545454;}.search-autocomplete .page_rs .preview .title{color:#414141;}.search-autocomplete .page_rs .preview .description{color:#545454;}.search-autocomplete .no-results{color:#545454;}.search-autocomplete .ajaxsearch .reviews_count{color:#e24000;}.search-autocomplete span.highlight{font-size:12;color:#ff0000;}.search-autocomplete li.title{background:#0e0200;color:#e9f5ff}.search-autocomplete li.preview:hover,.search-autocomplete li.suggest:hover{background:#fafbff;}.search-autocomplete .meta_data{width:315px}.ui-state-default,.ui-widget-content .ui-state-default,.ui-widget-header .ui-state-default{background:#ffffff;}.ui-state-hover,.ui-widget-content .ui-state-hover,.ui-widget-header .ui-state-hover,.ui-state-focus,.ui-widget-content .ui-state-focus,.ui-widget-header .ui-state-focus,.ui-state-active{background:#fafafa;}.ui-state-active,.ui-widget-content .ui-state-active,.ui-widget-header .ui-state-active,.ui-state-active a,.ui-state-active a:link,.ui-state-active a:visited{color:#000000}.ui-widget-header{background:#000000}</style>
<script type="text/javascript">
    var baseUrl = 'http://livedemo00.template-help.com/magento_52165/';
    var minchar = 3;
    var t_request = 500                      
</script>

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



<<div class="nav-container">
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
<li class="level0 nav-5 last active level-top"><a href="News?page=1" class="level-top"><span>News</span></a>
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
<li class="level0 nav-5 last active level-top"><a href="News?page=1" class="level-top"><span>News</span></a>
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
<div class="breadcrumbs">



<!--  navigation bar -->	


<ul>
<li class="home">
<a href="index.jsp" title="Go to Home Page">Home</a>
<span>></span>
</li>
<li class="category4">
<strong>News</strong>
</li>
</ul>
</div>
<div class="row">
<div class="col-main col-xs-12 col-sm-9">
<div class="padding-s">
<div class="youama-ajaxlogin-loader">
</div>
<div class="youama-login-window">
<div class="youama-window-outside">
<span class="close">×</span>
<div class="youama-window-inside">
<div class="youama-window-title">
<h3>
Login Form </h3>
</div>
<div class="account-login">
<script type="text/javascript">
                            //<![CDATA[
                            var dataForm = new VarienForm('login-form', true);
                            //]]>
                        </script>
</div>
<div class="youama-window-box first">
<div class="youama-window-content">
<div class="input-fly youama-showhideme">
<label for="youama-email">E-mail address <span>*</span></label>
<input type="text" placeholder="E-mail address" id="youama-email" name="youama-email" value=""/>
<div class="youama-ajaxlogin-error err-email err-noemail err-wrongemail err-wronglogin"></div>
</div>
<div class="input-fly youama-showhideme">
<label for="youama-password">Password <span>*</span></label>
<input type="password" placeholder="Password" id="youama-password" name="youama-password" value=""/>
<div class="youama-ajaxlogin-error err-password err-dirtypassword err-nopassword err-longpassword"></div>
</div>
</div>
</div>
<div class="youama-window-box last">
<div class="youama-window-content box-contents box-contents-button youama-showhideme">
<span class="youama-forgot-password">
<a href="#">Forgot Password ?</a>
</span>
<button type="button" class="button btn-proceed-checkout btn-checkout youama-ajaxlogin-button">
<span>
<span>
Login </span>
</span>
</button>
<p id="y-to-register" class="yoauam-switch-window">
or registration </p>
</div>
</div>
</div>
</div>
</div>
<div class="youama-register-window">
<div class="youama-window-outside">
<span class="close">×</span>
<div class="youama-window-inside">
<div class="youama-window-title">
<h3>
Registration </h3>
</div>
<div class="youama-window-box first">
<div class="youama-window-subtitle youama-showhideme">
<p>Profile Informations</p>
</div>
<div class="youama-window-content">
<div class="input-fly youama-showhideme">
<label for="youama-firstname">First Name <span>*</span></label>
<input type="text" placeholder="First Name" id="youama-firstname" name="youama-firstname" value=""/>
<div class="youama-ajaxlogin-error err-firstname err-nofirstname err-dirtyfirstname"></div>
</div>
<div class="input-fly youama-showhideme">
<label for="youama-lastname">Last Name <span>*</span></label>
<input type="text" placeholder="Last Name" id="youama-lastname" name="youama-lastname" value=""/>
<div class="youama-ajaxlogin-error err-lastname err-nolastname err-dirtylastname"></div>
</div>
<div class="input-fly input-fly-checkbox youama-showhideme">
<input type="checkbox" id="youama-newsletter" name="youama-newsletter" value="ok"/>
<label for="youama-newsletter">Subscribe to Newsletter</label>
</div>
</div>
</div>
<div class="youama-window-box second">
<div class="youama-window-subtitle youama-showhideme">
<p>Login Datas</p>
</div>
<div class="youama-window-content">
<div class="input-fly youama-showhideme">
<label for="youama-email">E-mail address <span>*</span></label>
<input type="text" placeholder="E-mail address" id="youama-email" name="youama-email" value=""/>
<div class="youama-ajaxlogin-error err-email err-noemail err-wrongemail err-emailisexist"></div>
</div>
<div class="input-fly youama-showhideme">
<label for="youama-password">Password <span>*</span></label>
<input type="password" placeholder="Password" id="youama-password" name="youama-password" value=""/>
<div class="youama-ajaxlogin-error err-password err-dirtypassword err-nopassword err-shortpassword err-longpassword"></div>
</div>
<div class="input-fly youama-showhideme">
<label for="youama-passwordsecond">Password confirmation <span>*</span></label>
<input type="password" placeholder="Password confirmation" id="youama-passwordsecond" name="youama-passwordsecond" value=""/>
<div class="youama-ajaxlogin-error err-passwordsecond err-nopasswordsecond err-notsamepasswords"></div>
</div>
<div class="input-fly input-fly-checkbox youama-showhideme">
<input type="checkbox" id="youama-licence" name="youama-licence" value="ok"/>
<label for="youama-licence">I accept the <a href="#" target="_blank">Terms and Coditions</a></label>
<div class="youama-ajaxlogin-error err-nolicence"></div>
</div>
</div>
</div>
<div class="youama-window-box last">
<div class="youama-window-content box-contents youama-showhideme">
<button type="button" class="button btn-proceed-checkout btn-checkout youama-ajaxlogin-button">
<span>
<span>
Register </span>
</span>
</button>
<p id="y-to-login" class="yoauam-switch-window">
or login </p>
</div>
</div>
</div>
</div>
</div>
<div class="youama_ajaxlogin-temp-error" style="display:none !important;">
<div class="ytmpa-nofirstname">First name is required!</div>
<div class="ytmpa-nolastname">Last name is required!</div>
<div class="ytmpa-dirtyfirstname">First name is not valid!</div>
<div class="ytmpa-dirtylastname">Last name is not valid!</div>
<div class="ytmpa-wrongemail">This is not an email address!</div>
<div class="ytmpa-noemail">Email address is required!</div>
<div class="ytmpa-emailisexist">This email is already registered!</div>
<div class="ytmpa-nopassword">Password is required!</div>
<div class="ytmpa-dirtypassword">Enter a valid password!</div>
<div class="ytmpa-shortpassword">Please enter 6 or more characters!</div>
<div class="ytmpa-longpassword">Please enter 16 or less characters!</div>
<div class="ytmpa-notsamepasswords">Passwords are not same!</div>
<div class="ytmpa-nolicence">Terms and Conditions are required!</div>
<div class="ytmpa-wronglogin">Email or Password is wrong!</div>
</div>
<script type="text/javascript">
        //<![CDATA[
           jQuery(window).load(function(){
                jQuery().youamaAjaxLogin({
                    redirection : '0',
                    profileUrl : 'login.jsp',
                    autoShowUp : 'no',
                    controllerUrl : 'Login'
                });
            });
        //]]>
    </script>
<div class="page-title category-title">
<h1>News</h1>
</div>
<div class="category-products">
<div class="toolbar">
<div class="pager">
<p class="amount">
















</p>


<div class="sorter">


<!-- 
<div class="sort-by">

<label>Sort By</label>
<select id="sortBy" onchange="return filter()">
<option value="#" selected="selected">
Name </option>
<option value="#">
Price </option>
</select>
</div> -->
</div>
</div>

<script>
function filter() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    	var data = xhttp.responseText;
	    	
	    	var pl = document.getElementById("products-list");
	    	pl.innerHTML=data;
	    	document.getElementById("first").innerHTML = pl.getElementsByTagName("input").length;
	    	document.getElementById("setlast").innerHTML = pl.getElementsByTagName("input").length;
	    	document.getElementById("more").style.visibility = "visible";
	    }
	  };
	  var x = document.getElementById("sortBy");
	  var y = x.options[x.selectedIndex].text;
	  var ol = document.getElementById("products-list");
	  var size = ol.getElementsByTagName("input").length;
	  var s  = Number(size) - 10 ;
	  
  xhttp.open("POST", "Check", true);
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send("ajax=filter&size="+s+"&sortBy="+y);
  return false;
}
</script>


<ol class="products-list" id="products-list">

<% 
for(int i =0; i< head.size(); i++){
%>





<li class="item" itemscope itemtype="http://schema.org/product">
<input type="hidden"></input>
<a href="<%=link.get(i) %>" title=  ' <%=head.get(i) %>'  class="product-image" itemprop="url" target="_blank"><img data-src= '<%=image.get(i) %>' width="210" height="210" class="lazy" alt= '<%=head.get(i) %>' src="image_placeholder.jpg"/></a>
<div class="product-shop">
<div class="f-fix">
<div class="list-left">
<h2 class="product-name"><a href="<%=link.get(i) %>" title="<%=head.get(i) %>" itemprop ="name" target="_blank" > <%=head.get(i) %> </a></h2>
<div class="desc std">
<div itemprop ="description"> <%=description.get(i) %>
</div>
</div>
</div>



<%-- <div class="list-right">
<div class="price-box">
<span class="regular-price" id="product-price-7">
<span class="price">$ <%=item[4] %></span> </span>
</div>

<ul class="add-to-links">
<li><a title="Add to Wishlist" <% if(userid != null)
{
    out.print("href='#' onclick='return addWishlist("+item[0]+")'");
}else{
    out.print("href = login.jsp");
}
%> class="link-wishlist tooltips">Add to Wishlist</a></li>




<li><span class="separator">|</span> <a title="Add to Compare" href="#" onclick='return addCompare("<%out.print(item[0]);%>");' class="link-compare tooltips">Add to Compare</a></li>
</ul>
</div> --%>

<div class="clear"></div>
</div>
</div>
<div class="label-product">
</div>
</li>

<% 

} %>




</ol>
<input type="hidden" value="" id="compare-count"/>
<script>
function addWishlist(gid) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    	var data = xhttp.responseText;
	    	if(data!='none'){
	    		var ws = document.getElementById("wishlist-sidebar-block");
		    	ws.innerHTML=data;
	    	}else{
	    		var ws = document.getElementById("wishlist-sidebar-block");
		    	ws.innerHTML="<p class='empty'>You have no items in wishlist.</p>";
	    		
	    	}
	    	
	    }
	  };
	  
	  
  xhttp.open("POST", "AddWishlist", true);
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send("uid="+<%=userid%>+"&gid="+gid);
  return false;
}




function addCompare(gid){
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
		  
	  var count = document.getElementById("compare-count").value;
	  if(count!="" || count!=null){
	  var num = count.split(';');
	  if(num.length-1 >=0 && num.length-1 < 4){
		  var j = 0;
		  
		  for(i=0;i<num.length;i++){
			  
			    if(gid==num[i]){
			    	j = j + 1;
			    }   
		  }
		  if(j==0){
			  var c = gid+";"+count;
			  document.getElementById("compare-count").value = c;
			  var se = document.getElementById("compare-count").value;
			  xhttp.open("POST", "Compare", true);
			  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			  xhttp.send("gids="+se);
			  Mage.Cookies.set("gids",se);
			  
		  }
		  
	  }else{
		  if(gid!=num[0] && gid!=num[1] && gid!=num[2] && gid!=num[3] ){
		  var d = gid+";"+num[0]+";"+num[1]+";"+num[2]+";";
		  document.getElementById("compare-count").value = d;
		  var se = document.getElementById("compare-count").value;
		  xhttp.open("POST", "Compare", true);
		  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		  xhttp.send("gids="+se);
		  Mage.Cookies.set("gids",se);
		 
		  }
	  }
	  }else{
		  document.getElementById("compare-count").value = gid+";";
		  var se = document.getElementById("compare-count").value;
		  xhttp.open("POST", "Compare", true);
		  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		  xhttp.send("gids="+se);
		  Mage.Cookies.set("gids",se);
		  
	  }
	  
	  return false;
}


</script>


<script type="text/javascript">decorateList('products-list', 'none-recursive')</script>
<div class="toolbar-bottom">
<div class="toolbar">
<div class="pager">
<p class="amount">

</p>
<div class="right">
<a class="fa fa-arrow-up" href="#" onclick="scrollToTop();return false"> </a>
</div>
<div class="actions">
<a href="News?page=1"><button style="height:24px;width:24px;<%if(number.equals("1")){out.print("background:#fff54d;");}%>">1</button></a>&nbsp; 
<a href="News?page=2"><button style="height:24px;width:24px;<%if(number.equals("2")){out.print("background:#fff54d;");}%>">2</button></a>&nbsp;
<a href="News?page=3"><button style="height:24px;width:24px;<%if(number.equals("3")){out.print("background:#fff54d;");}%>">3</button></a>&nbsp;
<a href="News?page=4"><button style="height:24px;width:24px;<%if(number.equals("4")){out.print("background:#fff54d;");}%>">4</button></a>&nbsp;
<a href="News?page=5"><button style="height:24px;width:24px;<%if(number.equals("5")){out.print("background:#fff54d;");}%>">5</button></a>&nbsp; 
<a href="News?page=6"><button style="height:24px;width:24px;<%if(number.equals("6")){out.print("background:#fff54d;");}%>">6</button></a>&nbsp; 
<a href="News?page=7"><button style="height:24px;width:24px;<%if(number.equals("7")){out.print("background:#fff54d;");}%>">7</button></a>&nbsp; 
<a href="News?page=8"><button style="height:24px;width:24px;<%if(number.equals("8")){out.print("background:#fff54d;");}%>">8</button></a>&nbsp;
<a href="News?page=9"><button style="height:24px;width:24px;<%if(number.equals("9")){out.print("background:#fff54d;");}%>">9</button></a>&nbsp; 
<a href="News?page=10"><button style="height:24px;width:24px;<%if(number.equals("10")){out.print("background:#fff54d;");}%>">10</button></a>
<script>


var timeOut;
function scrollToTop() {
	if (document.body.scrollTop!=0 || document.documentElement.scrollTop!=0){
		window.scrollBy(0,-50);
		timeOut=setTimeout('scrollToTop()',10);
	}
	else clearTimeout(timeOut);

}


</script>

</div>
</div>
</div>
<div class="sorter">


<!--

<p class="view-mode">
<label>View as:</label>
<a href="http://livedemo00.template-help.com/magento_52165/games.html?mode=grid" title="Grid" class="grid">Grid</a>&nbsp;
<strong title="List" class="list">List</strong>&nbsp;
</p>

-->


</div>
</div>
</div>







</div>
<div id="map-popup" class="map-popup" style="display:none;">
<a href="#" class="map-popup-close" id="map-popup-close">x</a>
<div class="map-popup-arrow"></div>
<div class="map-popup-heading"><h2 id="map-popup-heading"></h2></div>
<div class="map-popup-content" id="map-popup-content">
<div class="map-popup-msrp" id="map-popup-msrp-box"><strong>Price:</strong> <span style="text-decoration:line-through;" id="map-popup-msrp"></span></div>
<div class="map-popup-price" id="map-popup-price-box"><strong>Actual Price:</strong> <span id="map-popup-price"></span></div>
<script type="text/javascript">
        //<![CDATA[
            document.observe("dom:loaded", Catalog.Map.bindProductForm);
        //]]>
        </script>
</div>
<div class="map-popup-text" id="map-popup-text">Our price is lower than the manufacturer's &quot;minimum advertised price.&quot; As a result, we cannot show you the price in catalog or the product page. <br/><br/> You have no obligation to purchase the product once you know the price. You can simply remove the item from your cart.</div>
<div class="map-popup-text" id="map-popup-text-what-this">Our price is lower than the manufacturer's &quot;minimum advertised price.&quot; As a result, we cannot show you the price in catalog or the product page. <br/><br/> You have no obligation to purchase the product once you know the price. You can simply remove the item from your cart.</div>
</div>
</div>
</div>
<div class="col-left sidebar col-xs-12 col-sm-3"><div class="block block-layered-nav">
<div class="block-title">
<strong><span>Browse By</span></strong>
</div>




<!-- Browse by -->


<div class="block-content">


<dl id="narrow-by-list2">
<dt>Platform</dt>
<dd>
<ol>
<li>
<a href="Platform?platform=PC">PC</a>
</li>
<li>
<a href="Platform?platform=PS3">PS 3</a> 
</li>
<li>
<a href="Platform?platform=PS4">PS 4</a> 
</li>
<li>
<a href="Platform?platform=Xbox360">XBOX 360</a> 
</li>
<li>
<a href="Platform?platform=XboxOne">XBOX ONE</a> 
</li>
<li>
<a href="Platform?platform=WiiU">WII</a> 
</li>
<li>
<a href="Platform?platform=3DS">3DS</a> 
</li>
</ol>
</dd>
</dl>



<dl >
<dt>Categories</dt>
<dd>
<ol>
	<li><a href="Categories?category=Action"><span>Action</span></a>
	</li>
	<li><a href="Categories?category=Adventure"><span>Adventure</span></a>
	</li>
	<li><a href="Categories?category=Casual"><span>Casual</span></a>
	</li>
	<li><a href="Categories?category=Fighting"><span>Fighting</span></a>
	</li>
	<li ><a href="Categories?category=Role playing"><span>Role playing</span></a>
	</li>
	<li ><a href="Categories?category=Puzzle"><span>Puzzle</span></a>
	</li>
	<li ><a href="Categories?category=Racing"><span>Racing</span></a>
	</li>
	<li ><a href="Categories?category=Simulation"><span>Simulation</span></a>
	</li>
	<li ><a href="Categories?category=Sport"><span>Sports</span></a>
	</li>
	<li ><a href="Categories?category=Strategy"><span>Strategy</span></a>
	</li>
</ol>
</dd>
</dl>



<script type="text/javascript">decorateDataList('narrow-by-list2')</script>
</div>
</div>



<div class="block block-wishlist">
<div class="block-title">
<strong><span>My Wishlist</span></strong>
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
        					    	
        				    		}
        				    	}else{
        				    		var ws = document.getElementById("wishlist-sidebar-block");
        					    	ws.innerHTML="<p class='empty'>You have no items in wishlist.</p>";
        				    		
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


<div class="block block-list block-compare">
<div class="block-title">
<strong><span>Compare Products </span></strong>
</div>
<div class="block-content" id="block-content-compare">
<p class='empty'>You have no items to compare.</p>
</div>
</div>
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


</body>
</html>