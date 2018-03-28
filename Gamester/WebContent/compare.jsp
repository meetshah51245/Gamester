<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList" %>

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

(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

(function(b){
	(function(a){"__CF"in b&&"DJS"in b.__CF?b.__CF.DJS.push(a):"addEventListener"in b?b.addEventListener("load",a,!1):b.attachEvent("onload",a)}
		)
	(function(){"FB"in b&&"Event"in FB&&"subscribe"in FB.Event&&(FB.Event.subscribe("edge.create",function(a){_gaq.push(["_trackSocial","facebook","like",a])}),FB.Event.subscribe("edge.remove",function(a){_gaq.push(["_trackSocial","facebook","unlike",a])}),FB.Event.subscribe("message.send",function(a){_gaq.push(["_trackSocial","facebook","send",a])}));"twttr"in b&&"events"in twttr&&"bind"in twttr.events&&twttr.events.bind("tweet",function(a){if(a){var b;if(a.target&&a.target.nodeName=="IFRAME")a:{if(a=a.target.src){a=a.split("#")[0].match(/[^?=&]+=([^&]*)?/g);b=0;for(var c;c=a[b];++b)if(c.indexOf("url")===0){b=unescape(c.split("=")[1]);break; }}b=void 0}_gaq.push(["_trackSocial","twitter","tweet",b])}})})})(window);
/* ]]> */
</script>
<body class="page-popup catalog-product-compare-index">
<% 
HttpSession s = request.getSession(false);
String userid = "";
ArrayList<String[]> data = (ArrayList<String[]>)request.getAttribute("data");
ArrayList<String> description = (ArrayList<String>)request.getAttribute("description");
ArrayList<String> site = (ArrayList<String>)request.getAttribute("site");
ArrayList<ArrayList<String>> platform = (ArrayList<ArrayList<String>>)request.getAttribute("platform");
ArrayList<ArrayList<String>> category = (ArrayList<ArrayList<String>>)request.getAttribute("categories");
ArrayList<String> review = (ArrayList<String>)request.getAttribute("review");
%>
<div class="youama-ajaxlogin-loader">
</div>
<div class="youama-login-window">
<div class="youama-window-outside">
<span class="close">�</span>
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
<a href="http://livedemo00.template-help.com/magento_52165/customer/account/forgotpassword/">Forgot Password ?</a>
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
<span class="close">�</span>
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
                    profileUrl : '#',
                    autoShowUp : 'no',
                    controllerUrl : '#'
                });
            });
        //]]>
    </script>
<div class="page-title title-buttons">
<h1>Compare Products</h1>

</div>
<table class="data-table compare-table" id="product_comparison">
<col width="1"/>
<% for(int i = 0; i<data.size();i++) {
%>
<col width="<%out.print((int)100/(data.size()));%>%"/>
<%}%>



<tbody>
<tr class="product-shop-row">
<th>&nbsp;</th>

<%for(int j=0;j<data.size();j++){
	String dat[] = data.get(j);	%>

<td>
<a class="product-image" href="#" onclick="setPLocation('GameDetail?id=<%=dat[0] %>', true)" title="<%=dat[1]%>">
<img src="<%=dat[3] %>" width="125" height="125" alt="<%=dat[1]%>"/></a>
<h2 class="product-name">
<a href="#" onclick="setPLocation('GameDetail?id=<%=dat[0] %>', true)" title="<%=dat[1]%>">
<%=dat[1] %></a></h2>
<div class="price-box">
<span class="regular-price">
<span class="price">$<%=dat[4] %></span> </span>
</div>
</td>
<%} %>
</tr>
</tbody>
<tbody>
<tr>
<th><span class="nobr">Description</span></th>
<%for(int j=0;j<description.size();j++){
	%>
<td>
<div class="std"><%=description.get(j) %>
 </div>
</td>
<%} %>
</tr>
<tr>
<th><span class="nobr">Category</span></th>
<%for(int j=0;j<category.size();j++){
	ArrayList<String> cat = category.get(j);
	%>
<td>
<div class="std"> <% out.print(cat.get(0));
for(int z = 1;z < cat.size(); z++){
	out.print(" / "+cat.get(z));
}
%></div> 

</td>
<%} %>

</tr>


<tr>
<th><span class="nobr">Platform</span></th>
<%for(int j=0;j<platform.size();j++){
	ArrayList<String> plat = platform.get(j);
	%>
<td>
<div class="std"> <% out.print(plat.get(0));
for(int z = 1;z < plat.size(); z++){
	out.print(" / "+plat.get(z));
}
%></div> 

</td>
<%} %>

<tr>
<th><span class="nobr">Official website</span></th>
<%for(int j=0;j<site.size();j++){
	%>
<td>
<div class="std"><a href="<%= site.get(j) %>" target="_blank"><%=site.get(j) %></a>
 </div>
</td>
<%} %>
</tr>


<tr>
<th><span class="nobr">Review</span></th>
<%for(int j=0;j<review.size();j++){
	String rev = review.get(j);
	%>
<td>
<div class="std">
<div class="rating-box">
<div class="rating" style="width:<%=rev%>%"></div>
</div>
</div>
</td>
<%} %>
</tr>
</tbody>

<tbody>
<tr class="add-to-row">
<th>&nbsp;</th>
<%for(int j=0;j<data.size();j++){
	String dat[] = data.get(j);	%>

<td>
<div class="add-to-links">
<a title="Add to Wishlist" <% if(s != null){
	userid = (String)s.getAttribute("userid");
    if(userid != null)
{
	    out.print("href='#' onclick='return addWishlist("+dat[0]+")'");
	}else{
	    out.print("href = '#' onclick='closeWindow()'");
	}
}else{
    out.print("href = '#' onclick='closeWindow()'");}

	%>


class="link-wishlist">Add to Wishlist</a>
</div>
</td>

<%} %>

</tr>
</tbody>
</table>
<div class="buttons-set">
<button type="button" title="Close Window" class="button" onclick="window.close();"><span><span>Close Window</span></span></button>
</div>
<script type="text/javascript">
        decorateTable('product_comparison');

        /**
         * Send remove item request, after that reload windows
         */
        
        
        function addWishlist(gid) {
        	  var xhttp = new XMLHttpRequest();
        	  xhttp.onreadystatechange = function() {
        		    if (xhttp.readyState == 4 && xhttp.status == 200) {
        		    	var data = xhttp.responseText;
        		    	if(data!='none'){
        		    		window.opener.location.reload();
        		    		alert("Added to wishlist.");
        		    	}
        		    	
        		    }
        		  };
        		  
        		  
        	  xhttp.open("POST", "AddWishlist", true);
        	  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        	  xhttp.send("uid="+<%=userid%>+"&gid="+gid);
        	  return false;
        	}
        
        function closeWindow(){
        	alert("Please login!!!");
        	window.close();
        	
        }
        
        
    </script>

</body>
</html>
