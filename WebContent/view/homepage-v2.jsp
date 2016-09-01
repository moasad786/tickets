<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en-US">



<head>
<jsp:include page="layouts/head_include.jsp"></jsp:include>
<link rel='stylesheet' id='icomoon-icon-css'
	href="${pageContext.request.contextPath}/tokomoo/css/ninja-forms-display.css"type='text/css' media='all' />
	
	<style type="text/css" data-type="vc_custom-css">.revosliderclass {
    margin-bottom: 0px;
}

.highlight-left,.highlight-right{
    position: relative;
    z-index: 1;
}
.highlight-left:before{
    content:" ";
    width: 200%;
    height: 100%;
    position: absolute;
    top: 0;
    right: 0;
    background-color: #FCCD00;
    z-index: -1;
}
.highlight-left.blue:before{background-color:#0072BC}
.highlight-right:before{
    content:" ";
    width: 200%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-color: none;
    z-index: -1;
}

#ninja_forms_form_5_all_fields_wrap .field-wrap.text-wrap.label-above, #ninja_forms_form_5_all_fields_wrap .field-wrap.list-dropdown-wrap.label-above {
    display: inline-block;
    margin: 5px;
}

#ninja_forms_field_9_div_wrap {
    width: 46%;
}

input#ninja_forms_field_10 {
    margin: 5px;
    width: 95%;
    background-color: transparent;
    box-shadow: none;
    border:solid 1px white;
}

#ninja_forms_field_9 {
    background-color: white;
    color: #B8B8B8;
    border:none;
}</style>
	
	<style type="text/css" data-type="vc_shortcodes-custom-css">.vc_custom_1451979140891{margin-bottom: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 0px !important;padding-left: 0px !important;}.vc_custom_1452665233833{margin-bottom: 0px !important;padding-top: 100px !important;padding-bottom: 30px !important;background-color: #f9fbff !important;}.vc_custom_1452665243593{margin-bottom: 0px !important;background-color: #f9fbff !important;}.vc_custom_1452663247771{margin-top: 0px !important;margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;background-color: #f9fbff !important;}.vc_custom_1452665267632{margin-top: 0px !important;margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 100px !important;background-color: #f9fbff !important;}.vc_custom_1452591969407{padding-top: 100px !important;padding-bottom: 100px !important;background-position: 0 0 !important;background-repeat: no-repeat !important;}.vc_custom_1452781884863{padding-top: 100px !important;padding-bottom: 100px !important;background-image: url(http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/shutterstock_148618316-1-1.jpg?id=3880) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1452833957387{padding-top: 100px !important;background-position: 0 0 !important;background-repeat: no-repeat !important;}.vc_custom_1452674442074{padding-top: 100px !important;padding-bottom: 100px !important;background-color: #f7f7f7 !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1452673806771{padding-top: 100px !important;padding-bottom: 100px !important;}.vc_custom_1452747147322{padding-top: 100px !important;padding-bottom: 100px !important;background-image: url(http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/shutterstock_227649106.jpg?id=3846) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1451376647405{padding-top: 100px !important;padding-bottom: 100px !important;}.vc_custom_1452738553983{margin-bottom: 0px !important;background-color: #e1eef7 !important;}.vc_custom_1452919537543{margin-bottom: 0px !important;background-image: url(http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/shutterstock_251390473.jpg?id=3955) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1452741713176{margin-bottom: 0px !important;background-image: url(http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/shutterstock_150706844.jpg?id=3834) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1452676824617{margin-bottom: 0px !important;}.vc_custom_1452782312252{margin-bottom: 0px !important;padding-top: 80px !important;padding-bottom: 50px !important;background-image: url(http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/tumblr_n6orinaU971qfirfao1_1280.jpg?id=261) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1452831871255{padding-top: 50px !important;padding-right: 70px !important;padding-bottom: 50px !important;}.vc_custom_1452831404426{padding-top: 50px !important;}.vc_custom_1452856917999{margin-bottom: 5px !important;padding-left: 0px !important;}.vc_custom_1452856941545{padding-left: 0px !important;}.vc_custom_1452856984243{margin-top: 30px !important;}.vc_custom_1452831729916{padding-left: 20px !important;}.vc_custom_1452831658554{padding-left: 50px !important;}.vc_custom_1452831670305{padding-left: 50px !important;}.vc_custom_1452831680267{margin-top: 30px !important;padding-left: 50px !important;}.vc_custom_1452832384032{margin-bottom: 10px !important;}.vc_custom_1451370080855{margin-bottom: 10px !important;}.vc_custom_1452752499925{padding-right: 150px !important;padding-left: 150px !important;}.vc_custom_1452781702707{background-color: #00c1f2 !important;}.vc_custom_1450680912738{padding-right: 0px !important;}.vc_custom_1450680925137{padding-left: 0px !important;}.vc_custom_1450680912738{padding-right: 0px !important;}.vc_custom_1450680925137{padding-left: 0px !important;}.vc_custom_1452854463318{margin-bottom: 10px !important;}.vc_custom_1452591672965{margin-bottom: 10px !important;}.vc_custom_1452758590407{padding-right: 50px !important;padding-left: 50px !important;}.vc_custom_1452758804967{padding-right: 50px !important;padding-left: 50px !important;}.vc_custom_1452758903109{padding-right: 50px !important;padding-left: 50px !important;}.vc_custom_1452854479359{margin-bottom: 10px !important;}.vc_custom_1451370455280{margin-bottom: 10px !important;}.vc_custom_1452833837214{margin-top: 20px !important;}.vc_custom_1452754479116{margin-bottom: 0px !important;}.vc_custom_1452747466053{margin-top: 30px !important;}.vc_custom_1452919050864{margin-bottom: 10px !important;}.vc_custom_1452673661981{margin-bottom: 10px !important;}.vc_custom_1452919068807{margin-bottom: 10px !important;}.vc_custom_1452673607349{margin-bottom: 20px !important;}.vc_custom_1452758939395{background-color: #c9f8fc !important;}.vc_custom_1452758928973{background-color: #cce8ff !important;}.vc_custom_1452832933020{margin-bottom: 10px !important;}.vc_custom_1452674721459{margin-bottom: 10px !important;}.vc_custom_1458292301487{margin-bottom: 10px !important;}.vc_custom_1452741213708{padding-top: 37px !important;padding-bottom: 0px !important;background: #e1eef7 url(http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/pattern1.jpg?id=3822) !important;background-position: 0 0 !important;background-repeat: repeat !important;}.vc_custom_1452741030300{padding-top: 40px !important;padding-bottom: 0px !important;background-image: url(http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/pattern2.jpg?id=3823) !important;background-position: 0 0 !important;background-repeat: repeat !important;}.vc_custom_1452741039468{margin-top: 40px !important;margin-bottom: 10px !important;}.vc_custom_1452741048165{margin-top: 40px !important;margin-bottom: 10px !important;}.vc_custom_1452783860310{padding-top: 100px !important;padding-right: 75px !important;padding-bottom: 130px !important;padding-left: 75px !important;background-color: #15d6cf !important;}.vc_custom_1452666771200{padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1452782103946{padding-top: 100px !important;padding-right: 50px !important;padding-bottom: 100px !important;padding-left: 50px !important;background-color: #145fce !important;}.vc_custom_1452833695005{margin-left: 0px !important;}.vc_custom_1452833668443{margin-left: 0px !important;}.vc_custom_1452741946364{margin-top: 20px !important;padding-left: 60px !important;}.vc_custom_1452833757432{margin-top: 20px !important;}.vc_custom_1451381695903{margin-top: 30px !important;}</style>
</head>




<body
	class="home page page-id-4016 page-template page-template-templates page-template-fullwidth page-template-templatesfullwidth-php wpb-js-composer js-comp-ver-4.11.2.1 vc_responsive">

	<div class="site-content">

		 <jsp:include page="layouts/header.jsp"></jsp:include>
		
		
		
		<!-- .site-header -->


		<main class="main-content" id="content">
							<div class="container">
	

	
		
			<div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid has-overlay vc_custom_1451979140891"><span class="tokoo-row-overlay" style="background-color:rgba(0,88,221,0.55)"></span><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div class="wpb_revslider_element wpb_content_element revosliderclass"><link href="http://fonts.googleapis.com/css?family=Playfair+Display%3Aitalic" rel="stylesheet" property="stylesheet" type="text/css" media="all" /><link href="http://fonts.googleapis.com/css?family=Roboto%3A400%2C700" rel="stylesheet" property="stylesheet" type="text/css" media="all" />
<div id="rev_slider_3_1_wrapper" class="rev_slider_wrapper fullscreen-container" style="background-color:transparent;padding:0px;">
<!-- START REVOLUTION SLIDER 5.2.5.1 fullscreen mode -->
	<div id="rev_slider_3_1" class="rev_slider fullscreenbanner" style="display:none;" data-version="5.2.5.1">
<ul>	<!-- SLIDE  -->
	<li data-index="rs-7" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300"  data-thumb="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/shutterstock_196961741-100x50.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
		<!-- MAIN IMAGE -->
		<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/shutterstock_196961741.jpg"  alt="" title="shutterstock_196961741"  width="2400" height="1597" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
		<!-- LAYERS -->

		<!-- LAYER NR. 1 -->
		<div class="tp-caption three-title-light   tp-resizeme" 
			 id="slide-7-layer-1" 
			 data-x="150" 
			 data-y="150" 
						data-width="['auto']"
			data-height="['auto']"
			data-transform_idle="o:1;"
 
			 data-transform_in="y:-50px;opacity:0;s:300;e:Power2.easeInOut;" 
			 data-transform_out="y:50px;opacity:0;s:300;" 
			data-start="500" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 

			
			style="z-index: 5; white-space: nowrap;text-transform:left;font-style:italic;">Lampion Festival </div>

		<!-- LAYER NR. 2 -->
		<div class="tp-caption one-venue   tp-resizeme  slidedescription" 
			 id="slide-7-layer-4" 
			 data-x="147" 
			 data-y="250" 
						data-width="['auto']"
			data-height="['auto']"
			data-transform_idle="o:1;"
 
			 data-transform_in="y:50px;opacity:0;s:300;e:Power2.easeInOut;" 
			 data-transform_out="y:50px;opacity:0;s:300;" 
			data-start="1000" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 

			
			style="z-index: 6; white-space: nowrap; font-weight: 400;text-transform:left;">Sasana Budaya Ganesha - Jakarta </div>

		<!-- LAYER NR. 3 -->
		<div class="tp-caption one-date   tp-resizeme" 
			 id="slide-7-layer-5" 
			 data-x="150" 
			 data-y="230" 
						data-width="['auto']"
			data-height="['auto']"
			data-transform_idle="o:1;"
 
			 data-transform_in="y:bottom;s:300;e:Power2.easeInOut;" 
			 data-transform_out="y:50px;opacity:0;s:300;" 
			data-start="1500" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 

			
			style="z-index: 7; white-space: nowrap; font-size: 14px; color: rgba(255, 255, 255, 1.00);text-transform:left;">04-07 january 2016 </div>

		<!-- LAYER NR. 4 -->
		<div class="tp-caption   tp-resizeme" 
			 id="slide-7-layer-6" 
			 data-x="150" 
			 data-y="bottom" data-voffset="150" 
						data-width="['none','none','none','none']"
			data-height="['none','none','none','none']"
			data-transform_idle="o:1;"
 
			 data-transform_in="opacity:0;s:300;e:Power2.easeInOut;" 
			 data-transform_out="opacity:0;s:300;" 
			data-start="2000" 
			data-responsive_offset="on" 

			
			style="z-index: 8;text-transform:left;"><img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/button.png" alt="" width="230" height="61" data-ww="230px" data-hh="61px" data-no-retina> </div>
	</li>
	<!-- SLIDE  -->
	<li data-index="rs-15" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300"  data-thumb="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/shutterstock_204860686-100x50.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
		<!-- MAIN IMAGE -->
		<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/shutterstock_204860686.jpg"  alt="" title="shutterstock_204860686"  width="2400" height="1600" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
		<!-- LAYERS -->

		<!-- LAYER NR. 1 -->
		<div class="tp-caption three-title-dark   tp-resizeme" 
			 id="slide-15-layer-1" 
			 data-x="150" 
			 data-y="150" 
						data-width="['auto']"
			data-height="['auto']"
			data-transform_idle="o:1;"
 
			 data-transform_in="y:-50px;opacity:0;s:300;e:Power2.easeInOut;" 
			 data-transform_out="y:50px;opacity:0;s:300;" 
			data-start="500" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 

			
			style="z-index: 5; white-space: nowrap;text-transform:left;font-style:italic;">Music Festival </div>

		<!-- LAYER NR. 2 -->
		<div class="tp-caption one-venue-dark   tp-resizeme" 
			 id="slide-15-layer-4" 
			 data-x="150" 
			 data-y="250" 
						data-width="['auto']"
			data-height="['auto']"
			data-transform_idle="o:1;"
 
			 data-transform_in="y:50px;opacity:0;s:300;e:Power2.easeInOut;" 
			 data-transform_out="y:50px;opacity:0;s:300;" 
			data-start="1000" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 

			
			style="z-index: 6; white-space: nowrap;text-transform:left;">Sasana Budaya Ganesha - Jakarta </div>

		<!-- LAYER NR. 3 -->
		<div class="tp-caption one-date-dark   tp-resizeme" 
			 id="slide-15-layer-5" 
			 data-x="150" 
			 data-y="230" 
						data-width="['auto']"
			data-height="['auto']"
			data-transform_idle="o:1;"
 
			 data-transform_in="y:bottom;s:300;e:Power2.easeInOut;" 
			 data-transform_out="y:50px;opacity:0;s:300;" 
			data-start="1500" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 

			
			style="z-index: 7; white-space: nowrap;text-transform:left;">04-07 january 2016 </div>

		<!-- LAYER NR. 4 -->
		<div class="tp-caption   tp-resizeme" 
			 id="slide-15-layer-6" 
			 data-x="150" 
			 data-y="bottom" data-voffset="150" 
						data-width="['none','none','none','none']"
			data-height="['none','none','none','none']"
			data-transform_idle="o:1;"
 
			 data-transform_in="opacity:0;s:300;e:Power2.easeInOut;" 
			 data-transform_out="opacity:0;s:300;" 
			data-start="2000" 
			data-responsive_offset="on" 

			
			style="z-index: 8;text-transform:left;"><img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/button.png" alt="" width="230" height="61" data-ww="230px" data-hh="61px" data-no-retina> </div>
	</li>
	<!-- SLIDE  -->
	<li data-index="rs-16" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300"  data-thumb="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/shutterstock_220323652-100x50.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
		<!-- MAIN IMAGE -->
		<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/shutterstock_220323652.jpg"  alt="" title="shutterstock_220323652"  width="2400" height="1696" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
		<!-- LAYERS -->

		<!-- LAYER NR. 1 -->
		<div class="tp-caption three-title-dark   tp-resizeme" 
			 id="slide-16-layer-1" 
			 data-x="150" 
			 data-y="150" 
						data-width="['auto']"
			data-height="['auto']"
			data-transform_idle="o:1;"
 
			 data-transform_in="y:-50px;opacity:0;s:300;e:Power2.easeInOut;" 
			 data-transform_out="y:50px;opacity:0;s:300;" 
			data-start="500" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 

			
			style="z-index: 5; white-space: nowrap;text-transform:left;font-style:italic;">Mountain  Festival </div>

		<!-- LAYER NR. 2 -->
		<div class="tp-caption one-venue-dark   tp-resizeme" 
			 id="slide-16-layer-4" 
			 data-x="150" 
			 data-y="250" 
						data-width="['auto']"
			data-height="['auto']"
			data-transform_idle="o:1;"
 
			 data-transform_in="y:50px;opacity:0;s:300;e:Power2.easeInOut;" 
			 data-transform_out="y:50px;opacity:0;s:300;" 
			data-start="1000" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 

			
			style="z-index: 6; white-space: nowrap;text-transform:left;">Gunung Gede Pangrango </div>

		<!-- LAYER NR. 3 -->
		<div class="tp-caption one-date-dark   tp-resizeme" 
			 id="slide-16-layer-5" 
			 data-x="150" 
			 data-y="230" 
						data-width="['auto']"
			data-height="['auto']"
			data-transform_idle="o:1;"
 
			 data-transform_in="y:bottom;s:300;e:Power2.easeInOut;" 
			 data-transform_out="y:50px;opacity:0;s:300;" 
			data-start="1500" 
			data-splitin="none" 
			data-splitout="none" 
			data-responsive_offset="on" 

			
			style="z-index: 7; white-space: nowrap;text-transform:left;">04-07 january 2016 </div>

		<!-- LAYER NR. 4 -->
		<div class="tp-caption   tp-resizeme" 
			 id="slide-16-layer-6" 
			 data-x="150" 
			 data-y="bottom" data-voffset="150" 
						data-width="['none','none','none','none']"
			data-height="['none','none','none','none']"
			data-transform_idle="o:1;"
 
			 data-transform_in="opacity:0;s:300;e:Power2.easeInOut;" 
			 data-transform_out="opacity:0;s:300;" 
			data-start="2000" 
			data-responsive_offset="on" 

			
			style="z-index: 8;text-transform:left;"><img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/button.png" alt="" width="230" height="61" data-ww="230px" data-hh="61px" data-no-retina> </div>
	</li>
</ul>
<script>var htmlDiv = document.getElementById("rs-plugin-settings-inline-css"); var htmlDivCss="";
						if(htmlDiv) {
							htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
						}else{
							var htmlDiv = document.createElement("div");
							htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
							document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
						}
					</script>
<div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>	</div>
<script>var htmlDiv = document.getElementById("rs-plugin-settings-inline-css"); var htmlDivCss=".tp-caption.one-venue,.one-venue{color:rgba(255,255,255,0.60);font-size:18px;line-height:60px;font-weight:700;font-style:normal;font-family:Roboto;padding:0px 0px 0px 0px;text-decoration:none;text-align:center;background-color:transparent;border-color:transparent;border-style:none;border-width:0px;border-radius:0px 0px 0px 0px;text-transform:uppercase !important}.tp-caption.one-date,.one-date{color:rgba(255,255,255,0.60);font-size:18px;line-height:60px;font-weight:700;font-style:normal;font-family:Roboto;padding:0px 0px 0px 0px;text-decoration:none;text-align:center;background-color:transparent;border-color:transparent;border-style:none;border-width:0px;border-radius:0px 0px 0px 0px;text-transform:uppercase !important}.tp-caption.three-title-light,.three-title-light{color:rgba(255,255,255,1.00);font-size:80px;line-height:60px;font-weight:400;font-style:italic;font-family:Playfair Display;padding:0px 0px 0px 0px;text-decoration:none;text-align:center;background-color:transparent;border-color:transparent;border-style:none;border-width:0px;border-radius:0px 0px 0px 0px}.tp-caption.three-title-dark,.three-title-dark{color:rgba(36,41,45,1.00);font-size:80px;line-height:60px;font-weight:400;font-style:italic;font-family:Playfair Display;padding:0px 0px 0px 0px;text-decoration:none;text-align:center;background-color:transparent;border-color:transparent;border-style:none;border-width:0px;border-radius:0px 0px 0px 0px}.tp-caption.one-date-dark,.one-date-dark{color:rgba(36,41,45,1.00);font-size:14px;line-height:60px;font-weight:700;font-style:normal;font-family:Roboto;padding:0px 0px 0px 0px;text-decoration:none;text-align:center;background-color:transparent;border-color:transparent;border-style:none;border-width:0px;border-radius:0px 0px 0px 0px;text-transform:uppercase !important}.tp-caption.one-venue-dark,.one-venue-dark{color:rgba(36,41,45,0.60);font-size:18px;line-height:60px;font-weight:700;font-style:normal;font-family:Roboto;padding:0px 0px 0px 0px;text-decoration:none;text-align:center;background-color:transparent;border-color:transparent;border-style:none;border-width:0px;border-radius:0px 0px 0px 0px;text-transform:uppercase !important}";
				if(htmlDiv) {
					htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
				}else{
					var htmlDiv = document.createElement("div");
					htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
					document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
				}
			</script>
		<script type="text/javascript">
						/******************************************
				-	PREPARE PLACEHOLDER FOR SLIDER	-
			******************************************/

			var setREVStartSize=function(){
				try{var e=new Object,i=jQuery(window).width(),t=9999,r=0,n=0,l=0,f=0,s=0,h=0;
					e.c = jQuery('#rev_slider_3_1');
					e.gridwidth = [1280];
					e.gridheight = [868];
							
					e.sliderLayout = "fullscreen";
					e.fullScreenAutoWidth='off';
					e.fullScreenAlignForce='off';
					e.fullScreenOffsetContainer= '';
					e.fullScreenOffset='';
					if(e.responsiveLevels&&(jQuery.each(e.responsiveLevels,function(e,f){f>i&&(t=r=f,l=e),i>f&&f>r&&(r=f,n=e)}),t>r&&(l=n)),f=e.gridheight[l]||e.gridheight[0]||e.gridheight,s=e.gridwidth[l]||e.gridwidth[0]||e.gridwidth,h=i/s,h=h>1?1:h,f=Math.round(h*f),"fullscreen"==e.sliderLayout){var u=(e.c.width(),jQuery(window).height());if(void 0!=e.fullScreenOffsetContainer){var c=e.fullScreenOffsetContainer.split(",");if (c) jQuery.each(c,function(e,i){u=jQuery(i).length>0?u-jQuery(i).outerHeight(!0):u}),e.fullScreenOffset.split("%").length>1&&void 0!=e.fullScreenOffset&&e.fullScreenOffset.length>0?u-=jQuery(window).height()*parseInt(e.fullScreenOffset,0)/100:void 0!=e.fullScreenOffset&&e.fullScreenOffset.length>0&&(u-=parseInt(e.fullScreenOffset,0))}f=u}else void 0!=e.minHeight&&f<e.minHeight&&(f=e.minHeight);e.c.closest(".rev_slider_wrapper").css({height:f})
					
				}catch(d){console.log("Failure at Presize of Slider:"+d)}
			};
			
			setREVStartSize();
			
						var tpj=jQuery;
			
			var revapi3;
			tpj(document).ready(function() {
				if(tpj("#rev_slider_3_1").revolution == undefined){
					revslider_showDoubleJqueryError("#rev_slider_3_1");
				}else{
					revapi3 = tpj("#rev_slider_3_1").show().revolution({
						sliderType:"standard",
jsFileLocation:"//demo.tokomoo.com/festiven/standard/wp-content/plugins/revslider/public/assets/js/",
						sliderLayout:"fullscreen",
						dottedOverlay:"none",
						delay:9000,
						navigation: {
							keyboardNavigation:"off",
							keyboard_direction: "horizontal",
							mouseScrollNavigation:"off",
 							mouseScrollReverse:"default",
							onHoverStop:"off",
							arrows: {
								style:"zeus",
								enable:true,
								hide_onmobile:false,
								hide_onleave:false,
								tmp:'<div class="tp-title-wrap">  	<div class="tp-arr-imgholder"></div> </div>',
								left: {
									h_align:"left",
									v_align:"center",
									h_offset:20,
									v_offset:0
								},
								right: {
									h_align:"right",
									v_align:"center",
									h_offset:20,
									v_offset:0
								}
							}
						},
						visibilityLevels:[1240,1024,778,480],
						gridwidth:1280,
						gridheight:868,
						lazyType:"none",
						shadow:0,
						spinner:"spinner0",
						stopLoop:"off",
						stopAfterLoops:-1,
						stopAtSlide:-1,
						shuffle:"off",
						autoHeight:"off",
						fullScreenAutoWidth:"off",
						fullScreenAlignForce:"off",
						fullScreenOffsetContainer: "",
						fullScreenOffset: "",
						disableProgressBar:"on",
						hideThumbsOnMobile:"off",
						hideSliderAtLimit:0,
						hideCaptionAtLimit:0,
						hideAllCaptionAtLilmit:0,
						debugMode:false,
						fallbacks: {
							simplifyAll:"off",
							nextSlideOnWindowFocus:"off",
							disableFocusListener:false,
						}
					});
				}
			});	/*ready*/
		</script>
		<script>
					var htmlDivCss = unescape("%23rev_slider_3_1%20.zeus.tparrows%20%7B%0A%20%20cursor%3Apointer%3B%0A%20%20min-width%3A70px%3B%0A%20%20min-height%3A70px%3B%0A%20%20position%3Aabsolute%3B%0A%20%20display%3Ablock%3B%0A%20%20z-index%3A100%3B%0A%20%20border-radius%3A50%25%3B%20%20%20%0A%20%20overflow%3Ahidden%3B%0A%20%20background%3Argba%280%2C0%2C0%2C0.1%29%3B%0A%7D%0A%0A%23rev_slider_3_1%20.zeus.tparrows%3Abefore%20%7B%0A%20%20font-family%3A%20%22revicons%22%3B%0A%20%20font-size%3A20px%3B%0A%20%20color%3Argb%28255%2C%20255%2C%20255%29%3B%0A%20%20display%3Ablock%3B%0A%20%20line-height%3A%2070px%3B%0A%20%20text-align%3A%20center%3B%20%20%20%20%0A%20%20z-index%3A2%3B%0A%20%20position%3Arelative%3B%0A%7D%0A%23rev_slider_3_1%20.zeus.tparrows.tp-leftarrow%3Abefore%20%7B%0A%20%20content%3A%20%22%5Ce824%22%3B%0A%7D%0A%23rev_slider_3_1%20.zeus.tparrows.tp-rightarrow%3Abefore%20%7B%0A%20%20content%3A%20%22%5Ce825%22%3B%0A%7D%0A%0A%23rev_slider_3_1%20.zeus%20.tp-title-wrap%20%7B%0A%20%20background%3Argba%280%2C0%2C0%2C0.5%29%3B%0A%20%20width%3A100%25%3B%0A%20%20height%3A100%25%3B%0A%20%20top%3A0px%3B%0A%20%20left%3A0px%3B%0A%20%20position%3Aabsolute%3B%0A%20%20opacity%3A0%3B%0A%20%20transform%3Ascale%280%29%3B%0A%20%20-webkit-transform%3Ascale%280%29%3B%0A%20%20%20transition%3A%20all%200.3s%3B%0A%20%20-webkit-transition%3Aall%200.3s%3B%0A%20%20-moz-transition%3Aall%200.3s%3B%0A%20%20%20border-radius%3A50%25%3B%0A%20%7D%0A%23rev_slider_3_1%20.zeus%20.tp-arr-imgholder%20%7B%0A%20%20width%3A100%25%3B%0A%20%20height%3A100%25%3B%0A%20%20position%3Aabsolute%3B%0A%20%20top%3A0px%3B%0A%20%20left%3A0px%3B%0A%20%20background-position%3Acenter%20center%3B%0A%20%20background-size%3Acover%3B%0A%20%20border-radius%3A50%25%3B%0A%20%20transform%3Atranslatex%28-100%25%29%3B%0A%20%20-webkit-transform%3Atranslatex%28-100%25%29%3B%0A%20%20%20transition%3A%20all%200.3s%3B%0A%20%20-webkit-transition%3Aall%200.3s%3B%0A%20%20-moz-transition%3Aall%200.3s%3B%0A%0A%20%7D%0A%23rev_slider_3_1%20.zeus.tp-rightarrow%20.tp-arr-imgholder%20%7B%0A%20%20%20%20transform%3Atranslatex%28100%25%29%3B%0A%20%20-webkit-transform%3Atranslatex%28100%25%29%3B%0A%20%20%20%20%20%20%7D%0A%23rev_slider_3_1%20.zeus.tparrows%3Ahover%20.tp-arr-imgholder%20%7B%0A%20%20transform%3Atranslatex%280%29%3B%0A%20%20-webkit-transform%3Atranslatex%280%29%3B%0A%20%20opacity%3A1%3B%0A%7D%0A%20%20%20%20%20%20%0A%23rev_slider_3_1%20.zeus.tparrows%3Ahover%20.tp-title-wrap%20%7B%0A%20%20transform%3Ascale%281%29%3B%0A%20%20-webkit-transform%3Ascale%281%29%3B%0A%20%20opacity%3A1%3B%0A%7D%0A%20%0A");
					var htmlDiv = document.getElementById('rs-plugin-settings-inline-css');
					if(htmlDiv) {
						htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
					}
					else{
						var htmlDiv = document.createElement('div');
						htmlDiv.innerHTML = '<style>' + htmlDivCss + '</style>';
						document.getElementsByTagName('head')[0].appendChild(htmlDiv.childNodes[0]);
					}
				  </script>
				</div><!-- END REVOLUTION SLIDER --></div></div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-parallax-image="https://www.youtube.com/watch?v=i4LU2oPqyyk" data-vc-video-bg="https://www.youtube.com/watch?v=i4LU2oPqyyk" class="vc_row wpb_row vc_row-fluid bg-center vc_video-bg-container"><span class="tokoo-row-overlay" style="background-color:"></span><div class="highlight-left wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner vc_custom_1452831871255"><div class="wpb_wrapper"><div style="font-size: 48px;color: #444444;text-align: left;font-family:Roboto Condensed;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1452856917999">THE VENUE</div><h2 style="font-size: 24px;color: #444444;line-height: 1.5;text-align: left;font-family:Roboto Condensed;font-weight:700;font-style:normal" class="vc_custom_heading vc_custom_1452856941545">Jalan Piit. No.1 Sadang Serang Coblong, Bandung Jawa Barat Indonesia 40133</h2><div class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_border_width_2 vc_sep_pos_align_center vc_separator_no_text"><span class="vc_sep_holder vc_sep_holder_l"><span  style="border-color:#e8b717;" class="vc_sep_line"></span></span><span class="vc_sep_holder vc_sep_holder_r"><span  style="border-color:#e8b717;" class="vc_sep_line"></span></span>
</div>
<div class="contact-block" style=color:#444444>
			<div class="contact-block__phone">
			<i class="fa fa-phone"></i><a style=color:#444444 href="tel:(022)-789-097">(022)-789-097</a>
		</div>
	
			<div class="contact-block__fax">
			<i class="fa fa-fax"></i><a style=color:#444444 href="tel:(022)-789-098">(022)-789-098</a>
		</div>
	
			<div class="contact-block__skype">
			<i class="fa fa-skype"></i><a style=color:#444444 href="skype:festiven_support?call">festiven_support</a>
		</div>
	
			<div class="contact-block__email">
			<i class="fa fa-envelope"></i><a style=color:#444444 href="mailto:support@festiven.co">support@festiven.co</a>
		</div>
	
			<div class="contact-block__url">
			<i class="fa fa-globe"></i><a style=color:#444444 href="http://festiven.co" target="_blank">http://festiven.co</a>
		</div>
	</div><div class="vc_btn3-container vc_btn3-left vc_custom_1452856984243"><button class="vc_general vc_btn3 vc_btn3-size-lg vc_btn3-shape-square vc_btn3-style-outline vc_btn3-color-black">SEE SUITABLE ACCOMMODATION</button></div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner vc_custom_1452831404426"><div class="wpb_wrapper">
	<div class="wpb_single_image wpb_content_element vc_custom_1452831729916 vc_align_left ">
		<div class="wpb_wrapper">
			
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img width="170" height="109" src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/e.png" class="vc_single_image-img attachment-full" alt="e" /></div>
		</div> 
	</div> <div style="font-size: 64px;color: #ffffff;line-height: 1;text-align: left;font-family:Roboto Condensed;font-weight:700;font-style:normal" class="vc_custom_heading vc_custom_1452831658554">WordCamp</div><div style="font-size: 64px;color: #ffffff;line-height: 1;text-align: left;font-family:Roboto Condensed;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1452831670305">CANTABRIA</div><div class="vc_btn3-container vc_btn3-left vc_custom_1452831680267"><button class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-square vc_btn3-style-outline vc_btn3-color-white">GET DIRECTION</button></div>
</div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1452665233833"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div
	class="vc_icon_element vc_icon_element-outer vc_custom_1452832384032 vc_icon_element-align-center">
	<div class="vc_icon_element-inner vc_icon_element-color-custom vc_icon_element-size-xl vc_icon_element-style- vc_icon_element-background-color-grey"><span class="vc_icon_element-icon ti-microphone" style="color:#23d7dd !important"></span></div>
</div>
<div style="font-size: 48px;color: #003456;text-align: center;font-family:Roboto Condensed;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1451370080855">SPEAKER</div>
	<div class="wpb_text_column wpb_content_element  vc_custom_1452752499925">
		<div class="wpb_wrapper">
			<p style="text-align: center;">Nunc tortor arcu, dictum in varius sit amet, cursus lobortis quam. Ut semper dui pellentesque hendrerit dignissim. Praesent a tellus sed quam interdum faucibus.</p>

		</div>
	</div>
</div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1452665243593"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper">
<div class="speaker-block speaker-block--image-left  vc_custom_1452781702707">
	<div class="speaker-block__image">
		<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/shutterstock_227452675-2-600x400.jpg" alt="Andy Matthew" width=180 height=180>
	</div>
	<div class="speaker-block__desc">
					<div class="speaker-block__name" data-name="Andy Matthew"><span>Andy Matthew</span></div>
		
					<small class="speaker-block__position">Web Developer</small>
				
					<div class="speaker-block__bio">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem ipsa facere, perspiciatis eos consequuntur minima! Vero quam, blanditiis officia. Ab libero necessitatibus quas officiis, cumque quibusdam praesentium iusto animi iure!			</div>
		
		<div class="speaker-block__social">
			<div class="social-links">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
													<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
													<a href="#" class="url"><i class="fa fa-globe"></i></a>
							</div>
		</div>
	</div>
</div></div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1452663247771"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-6 vc_col-md-6 vc_col-xs-12"><div class="vc_column-inner vc_custom_1450680912738"><div class="wpb_wrapper">
<div class="speaker-block speaker-block--image-left ">
	<div class="speaker-block__image">
		<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/shutterstock_262964918-400x400.jpg" alt="Rachel Williams" width=180 height=180>
	</div>
	<div class="speaker-block__desc">
					<div class="speaker-block__name" data-name="Rachel Williams"><span>Rachel Williams</span></div>
		
					<small class="speaker-block__position">Web Designer</small>
				
					<div class="speaker-block__bio">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit.			</div>
		
		<div class="speaker-block__social">
			<div class="social-links">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
													<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
											</div>
		</div>
	</div>
</div></div></div></div><div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-6 vc_col-md-6 vc_col-xs-12"><div class="vc_column-inner vc_custom_1450680925137"><div class="wpb_wrapper">
<div class="speaker-block speaker-block--image-left ">
	<div class="speaker-block__image">
		<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/shutterstock_156259034-400x400.jpg" alt="Bill Gareth" width=180 height=180>
	</div>
	<div class="speaker-block__desc">
					<div class="speaker-block__name" data-name="Bill Gareth"><span>Bill Gareth</span></div>
		
					<small class="speaker-block__position">Web Designer</small>
				
					<div class="speaker-block__bio">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit.			</div>
		
		<div class="speaker-block__social">
			<div class="social-links">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
													<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
											</div>
		</div>
	</div>
</div></div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1452665267632"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-6 vc_col-md-6 vc_col-xs-12"><div class="vc_column-inner vc_custom_1450680912738"><div class="wpb_wrapper">
<div class="speaker-block speaker-block--image-right ">
	<div class="speaker-block__image">
		<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/shutterstock_271990043-400x400.jpg" alt="Alena Andrew" width=180 height=180>
	</div>
	<div class="speaker-block__desc">
					<div class="speaker-block__name" data-name="Alena Andrew"><span>Alena Andrew</span></div>
		
					<small class="speaker-block__position">Web Designer</small>
				
					<div class="speaker-block__bio">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit.			</div>
		
		<div class="speaker-block__social">
			<div class="social-links">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
													<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
											</div>
		</div>
	</div>
</div></div></div></div><div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-6 vc_col-md-6 vc_col-xs-12"><div class="vc_column-inner vc_custom_1450680925137"><div class="wpb_wrapper">
<div class="speaker-block speaker-block--image-right ">
	<div class="speaker-block__image">
		<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/shutterstock_329901242-400x400.jpg" alt="Jenny Armstrong" width=180 height=180>
	</div>
	<div class="speaker-block__desc">
					<div class="speaker-block__name" data-name="Jenny Armstrong"><span>Jenny Armstrong</span></div>
		
					<small class="speaker-block__position">Web Designer</small>
				
					<div class="speaker-block__bio">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit.			</div>
		
		<div class="speaker-block__social">
			<div class="social-links">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
													<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
											</div>
		</div>
	</div>
</div></div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid bg-bottom-right vc_custom_1452591969407"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div
	class="vc_icon_element vc_icon_element-outer vc_custom_1452854463318 vc_icon_element-align-center">
	<div class="vc_icon_element-inner vc_icon_element-color-custom vc_icon_element-size-xl vc_icon_element-style- vc_icon_element-background-color-grey"><span class="vc_icon_element-icon ti-calendar" style="color:#2dce1e !important"></span></div>
</div>
<div style="font-size: 48px;color: #003456;text-align: center;font-family:Roboto Condensed;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1452591672965">EVENT FOCUS</div><div class="vc_row wpb_row vc_inner vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner "><div class="wpb_wrapper">
<div class="koo-icon-box   vc_custom_1452758590407">
	<div class="koo-icon-box__icon " style="color:#39edf9;font-size:72px;">
		<i class="ti-image"></i>
	</div>
	<h2 class="koo-icon-box__title   " style="font-size:24px;">Photography tricks</h2>
	<div class="koo-icon-box__content  " style="font-size:16px;">
					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem.</p>
					</div>
</div>

<div class="koo-icon-box  ">
	<div class="koo-icon-box__icon " style="color:#4d6df9;font-size:72px;">
		<i class="ti-user"></i>
	</div>
	<h2 class="koo-icon-box__title   " style="font-size:24px;">Various Speakers</h2>
	<div class="koo-icon-box__content  " style="font-size:16px;">
					<p>Integer nunc sem, tempor in massa in, rutrum accumsan metus. Interdum et malesuada fames ac.</p>
					</div>
</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner "><div class="wpb_wrapper">
<div class="koo-icon-box   vc_custom_1452758804967">
	<div class="koo-icon-box__icon " style="color:#9338f4;font-size:72px;">
		<i class="ti-shopping-cart-full"></i>
	</div>
	<h2 class="koo-icon-box__title   " style="font-size:24px;">Easy Shopping</h2>
	<div class="koo-icon-box__content  " style="font-size:16px;">
					<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>
					</div>
</div>

<div class="koo-icon-box   vc_custom_1452758903109">
	<div class="koo-icon-box__icon " style="color:#f4389c;font-size:72px;">
		<i class="ti-cut"></i>
	</div>
	<h2 class="koo-icon-box__title   " style="font-size:24px;">Discounted Price</h2>
	<div class="koo-icon-box__content  " style="font-size:16px;">
					<p>Suspendisse tempor aliquet nisi. Aliquam quis augue venenatis, auctor massa a, dictum lorem</p>
					</div>
</div>
</div></div></div></div></div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid has-overlay bg-top-center vc_custom_1452781884863"><span class="tokoo-row-overlay" style="background-color:rgba(0,0,0,0.17)"></span><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper">
			<div class="testimonial-carousel-container">
			<div class="testimonial-carousel-block">
	
	
		<div class="testimonial-item">
		 			 						<img class="testimonial-item__image" src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/10/fdasfadfafa-100x100.jpg" alt="Austin Lockington" width=100 height=100>
		 	
			<blockquote class="testimonial-item__quote" style="color:#ffffff;">
				<p>I just want to thank Festiven for all the help with making the shirt for my friend. I was born on National Beer Day What is your excuse!!</p>

				<cite class="testimonial-item__cite">
					<strong style="color:#ffffff;">Austin Lockington</strong>
					<small style="color:rgba(255,255,255,0.72);">CEO of Icreativelabs.com</small>
				</cite>
			</blockquote>

		</div>

	
		<div class="testimonial-item">
		 			 						<img class="testimonial-item__image" src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/10/asdfadfafasd-100x100.jpg" alt="Mike Geoffrey" width=100 height=100>
		 	
			<blockquote class="testimonial-item__quote" style="color:#ffffff;">
				<p>Your list needs work but you could definitely expand this idea. I collect vintage shirts and I had a few ideas for media projects feel free to email me if you ever read this.</p>

				<cite class="testimonial-item__cite">
					<strong style="color:#ffffff;">Mike Geoffrey</strong>
					<small style="color:rgba(255,255,255,0.72);">CEO of Icreativelabs.com</small>
				</cite>
			</blockquote>

		</div>

	
		<div class="testimonial-item">
		 			 						<img class="testimonial-item__image" src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/10/fads-100x100.jpg" alt="Handy Bailey" width=100 height=100>
		 	
			<blockquote class="testimonial-item__quote" style="color:#ffffff;">
				<p>As usual, I had a great experience for themes . Jesse, the young man who helped me, was very pleasant. He walked me through the most important services for my vehicle at this time and answered all of my questions.</p>

				<cite class="testimonial-item__cite">
					<strong style="color:#ffffff;">Handy Bailey</strong>
					<small style="color:rgba(255,255,255,0.72);">CEO of Icreativelabs.com</small>
				</cite>
			</blockquote>

		</div>

		
				</div>

			
		</div>
	
</div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid bg-bottom-right vc_custom_1452833957387"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div
	class="vc_icon_element vc_icon_element-outer vc_custom_1452854479359 vc_icon_element-align-center">
	<div class="vc_icon_element-inner vc_icon_element-color-custom vc_icon_element-size-xl vc_icon_element-style- vc_icon_element-background-color-grey"><span class="vc_icon_element-icon ti-time" style="color:#009dd6 !important"></span></div>
</div>
<div style="font-size: 48px;color: #003456;text-align: center;font-family:Roboto Condensed;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1451370455280">AGENDA</div><div class="vc_row wpb_row vc_inner vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_single_image wpb_content_element vc_custom_1452754479116 vc_align_center ">
		<div class="wpb_wrapper">
			
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img class="vc_single_image-img " src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/shutterstock_14027489222-300x500.png" width="300" height="500" alt="shutterstock_14027489222" title="shutterstock_14027489222" /></div>
		</div> 
	</div> </div></div></div><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner vc_custom_1452833837214"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element ">
		<div class="wpb_wrapper">
			<table class="time-schedule">
<tbody>
<tr>
<td><i class="drip-icon-tag"></i> 08:00</td>
<td>Start</td>
</tr>
<tr>
<td><i class="drip-icon-tag"></i> 09:00</td>
<td>Deploying a WordPress Site with Minimal Work</td>
</tr>
<tr>
<td><i class="drip-icon-tag"></i> 12:00</td>
<td>Lunch</td>
</tr>
<tr>
<td><i class="drip-icon-tag"></i> 13:30</td>
<td>Putting The User First: Organizing Your Website’s Content To Reflect User Needs Rather Than Your Organization’s Structure</td>
</tr>
<tr>
<td><i class="drip-icon-tag"></i> 14:30</td>
<td>Keeping Your WordPress Site Updated</td>
</tr>
<tr>
<td><i class="drip-icon-tag"></i> 15:30</td>
<td>Last check the work on the website</td>
</tr>
<tr>
<td><i class="drip-icon-tag"></i> 16:00</td>
<td>End</td>
</tr>
</tbody>
</table>

		</div>
	</div>

	<div class="event-schedule-table event-info-block">
		<table class="time-schedule">

		<tr><td><i class="drip-icon-tag"></i> 08:00</td><td>Start</td></tr><tr><td><i class="drip-icon-tag"></i> 09:00</td><td>Learning through Stealing: How to become better at your craft</td></tr><tr><td><i class="drip-icon-tag"></i> 12:00</td><td>Lunch</td></tr><tr><td><i class="drip-icon-tag"></i> 13:00</td><td>Introduction to the WordPress Backend</td></tr><tr><td><i class="drip-icon-tag"></i> 16:00</td><td>End</td></tr></table></div><div class="vc_btn3-container vc_btn3-left vc_custom_1452747466053"><button class="vc_general vc_btn3 vc_btn3-size-lg vc_btn3-shape-square vc_btn3-style-outline vc_btn3-color-primary">BOOK YOUR TICKET</button></div>
</div></div></div></div></div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1452674442074"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div
	class="vc_icon_element vc_icon_element-outer vc_custom_1452919050864 vc_icon_element-align-center">
	<div class="vc_icon_element-inner vc_icon_element-color-custom vc_icon_element-size-xl vc_icon_element-style- vc_icon_element-background-color-grey"><span class="vc_icon_element-icon ti-image" style="color:#db466d !important"></span></div>
</div>
<div style="font-size: 48px;color: #003456;text-align: center;font-family:Roboto Condensed;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1452673661981">GALLERY</div>
	<div class="wpb_text_column wpb_content_element ">
		<div class="wpb_wrapper">
			<p style="text-align: center;">Here is some of our image documentations</p>

		</div>
	</div>

<div class="gallery-masonry  columns-4" style="margin-right:-10px;">

	
		
								<a href="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/shutterstock_150706844-1.jpg" style="padding-right:10px;padding-bottom:10px;">
				<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/shutterstock_150706844-1.jpg" alt="Gallery Item" alt>
			</a>
								<a href="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/2015-09-07-anthonydelanoix-005-683x1024.jpg" style="padding-right:10px;padding-bottom:10px;">
				<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/2015-09-07-anthonydelanoix-005-683x1024.jpg" alt="Gallery Item" alt>
			</a>
								<a href="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/shutterstock_220323652.jpg" style="padding-right:10px;padding-bottom:10px;">
				<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/shutterstock_220323652.jpg" alt="Gallery Item" alt>
			</a>
								<a href="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/shutterstock_196961741.jpg" style="padding-right:10px;padding-bottom:10px;">
				<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/shutterstock_196961741.jpg" alt="Gallery Item" alt>
			</a>
								<a href="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/10/k.jpg" style="padding-right:10px;padding-bottom:10px;">
				<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/10/k.jpg" alt="Gallery Item" alt>
			</a>
								<a href="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/10/e.jpg" style="padding-right:10px;padding-bottom:10px;">
				<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/10/e.jpg" alt="Gallery Item" alt>
			</a>
								<a href="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/95.jpg" style="padding-right:10px;padding-bottom:10px;">
				<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/95.jpg" alt="Gallery Item" alt>
			</a>
								<a href="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/tumblr_niklrkRX5L1tkairwo1_1280.jpg" style="padding-right:10px;padding-bottom:10px;">
				<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/tumblr_niklrkRX5L1tkairwo1_1280.jpg" alt="Gallery Item" alt>
			</a>
								<a href="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/lampion.jpg" style="padding-right:10px;padding-bottom:10px;">
				<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/lampion.jpg" alt="Gallery Item" alt>
			</a>
								<a href="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/sky-night-water-1.jpg" style="padding-right:10px;padding-bottom:10px;">
				<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/sky-night-water-1.jpg" alt="Gallery Item" alt>
			</a>
								<a href="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/The-girl-at-the-festival.jpg" style="padding-right:10px;padding-bottom:10px;">
				<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/The-girl-at-the-festival.jpg" alt="Gallery Item" alt>
			</a>
			</div>
</div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1452673806771"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div
	class="vc_icon_element vc_icon_element-outer vc_custom_1452919068807 vc_icon_element-align-center">
	<div class="vc_icon_element-inner vc_icon_element-color-custom vc_icon_element-size-xl vc_icon_element-style- vc_icon_element-background-color-grey"><span class="vc_icon_element-icon ti-bookmark-alt" style="color:#ffc528 !important"></span></div>
</div>
<div style="font-size: 48px;color: #3d3d3d;line-height: 1;text-align: center;font-family:Roboto Condensed;font-weight:400;font-style:normal" class="vc_custom_heading vc_custom_1452673607349">Book Your Ticket Now</div>
	<div class="wpb_text_column wpb_content_element ">
		<div class="wpb_wrapper">
			<p style="text-align: center;">Consectetur adipiscing elit. Ut elit tellus, luctus nec<br />
ullamcorper mattis, pulvinar dapibus leo.</p>

		</div>
	</div>
<div class="vc_row wpb_row vc_inner vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner "><div class="wpb_wrapper">
<div class="price-box  vc_custom_1452758939395" >

	<div class="price-type">
					<div class="price" style='font-weight:100'>$25</div>
							<div class="price-title">Standard</div>
			</div>

	<div class="price-detail">
					<h2 class="feature-title">Features</h2>
		
					<ul>
													<li>Feature 1</li>
									<li>More Feature 2</li>
									<li>Another Feat</li>
							</ul>
		
					<a href="#" class="button">Book Now</a>
			</div>

</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner "><div class="wpb_wrapper">
<div class="price-box  vc_custom_1452758928973" >

	<div class="price-type">
					<div class="price" style='font-weight:100'>$45</div>
							<div class="price-title">Premium</div>
			</div>

	<div class="price-detail">
					<h2 class="feature-title">Features</h2>
		
					<ul>
													<li>Feature 1</li>
									<li>More Feature 2</li>
									<li>Another Feat</li>
							</ul>
		
					<a href="#" class="button">Book Now</a>
			</div>

</div>
</div></div></div></div></div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid bg-top-center vc_custom_1452747147322"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div
	class="vc_icon_element vc_icon_element-outer vc_custom_1452832933020 vc_icon_element-align-center">
	<div class="vc_icon_element-inner vc_icon_element-color-custom vc_icon_element-size-xl vc_icon_element-style- vc_icon_element-background-color-grey"><span class="vc_icon_element-icon ti-star" style="color:#ffffff !important"></span></div>
</div>
<div style="font-size: 48px;color: #ffffff;text-align: center;font-family:Roboto Condensed;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1452674721459">Upcoming Events</div>
	<div class="wpb_text_column wpb_content_element ">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color: #ffffff;">There are more upcoming event</span><br />
<span style="color: #ffffff;">with amazing speakers</span></p>

		</div>
	</div>
<div class="events-grid columns-3">
		<div class="event">
			<a href="http://demo.tokomoo.com/festiven/standard/event/wordcamp-2016-hampton-roads-2/">
									<figure class="event-thumb">
						<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/256176190a116b5261b56ade52bee962-632x506.jpg" alt="Event Thumbnail">
					</figure>
								<h2 class="event-title">WordCamp 2016: Hampton Roads</h2>
				<span class="event-date">
					<span class="fold">
						<span class="day">01</span>
						<span class="month">Aug</span>
						<span class="year">2016</span>
					</span>
				</span>
			</a>
		</div>

	
		<div class="event">
			<a href="http://demo.tokomoo.com/festiven/standard/event/wordcamp-seattle-beginner-edition-2/">
									<figure class="event-thumb">
						<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/FireShot-Screen-Capture-195-The-90s-Festival-I-BIG-REUNION-the90sfestival_com-632x506.jpg" alt="Event Thumbnail">
					</figure>
								<h2 class="event-title">WORDCAMP SEATTLE: BEGINNER EDITION</h2>
				<span class="event-date">
					<span class="fold">
						<span class="day">02</span>
						<span class="month">Aug</span>
						<span class="year">2016</span>
					</span>
				</span>
			</a>
		</div>

	
		<div class="event">
			<a href="http://demo.tokomoo.com/festiven/standard/event/wordcamp-porto-alegre-2016-2/">
									<figure class="event-thumb">
						<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/9067c09cc8ffd8e6c11915f1a2f7f25f-632x506.jpg" alt="Event Thumbnail">
					</figure>
								<h2 class="event-title">WordCamp Porto Alegre 2016</h2>
				<span class="event-date">
					<span class="fold">
						<span class="day">03</span>
						<span class="month">Aug</span>
						<span class="year">2016</span>
					</span>
				</span>
			</a>
		</div>

	
		<div class="event">
			<a href="http://demo.tokomoo.com/festiven/standard/event/wordcamp-portland-2016-2/">
									<figure class="event-thumb">
						<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/f9d9143b3a465f3ad7981eca00d457e4-632x506.jpg" alt="Event Thumbnail">
					</figure>
								<h2 class="event-title">WORDCAMP PORTLAND 2016</h2>
				<span class="event-date">
					<span class="fold">
						<span class="day">05</span>
						<span class="month">Aug</span>
						<span class="year">2016</span>
					</span>
				</span>
			</a>
		</div>

	
		<div class="event">
			<a href="http://demo.tokomoo.com/festiven/standard/event/wordcamp-los-angeles-2016-2/">
									<figure class="event-thumb">
						<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/2014-09-life-of-pix-free-stock1-photos-New-York-light-Festive-banner-dirty-632x506.jpg" alt="Event Thumbnail">
					</figure>
								<h2 class="event-title">WordCamp Los Angeles 2016</h2>
				<span class="event-date">
					<span class="fold">
						<span class="day">07</span>
						<span class="month">Aug</span>
						<span class="year">2016</span>
					</span>
				</span>
			</a>
		</div>

	
		<div class="event">
			<a href="http://demo.tokomoo.com/festiven/standard/event/wordcamp-raleigh-2016-2/">
									<figure class="event-thumb">
						<img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/Man-With-Hat-632x506.jpg" alt="Event Thumbnail">
					</figure>
								<h2 class="event-title">WordCamp Raleigh 2016</h2>
				<span class="event-date">
					<span class="fold">
						<span class="day">01</span>
						<span class="month">Sep</span>
						<span class="year">2016</span>
					</span>
				</span>
			</a>
		</div>

	
</div><div class="vc_empty_space"  style="height: 32px" ><span class="vc_empty_space_inner"></span></div>
</div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1451376647405"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div style="font-size: 48px;color: #003456;text-align: center;font-family:Roboto Condensed;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1458292301487">PROUDLY SPONSORED BY</div>
	<div class="wpb_text_column wpb_content_element ">
		<div class="wpb_wrapper">
			<div style="text-align: center;"><img class="alignnone size-thumbnail wp-image-2624" src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/l3-170x109-150x109.png" alt="l3-170x109" width="150" height="109" /><img class="alignnone size-thumbnail wp-image-2626" src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/l6-170x109-150x109.png" alt="l6-170x109" width="150" height="109" /><img class="alignnone size-thumbnail wp-image-2625" src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/l5-170x109-150x109.png" alt="l5-170x109" width="150" height="109" /><img class="alignnone size-thumbnail wp-image-2623" src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/l1-170x109-150x109.png" alt="l1-170x109" width="150" height="109" /></div>
<div style="text-align: center;"></div>
<div style="text-align: center;"></div>
<div style="text-align: center;">Thanks to our sponsors to make this summit possible</div>
<div style="text-align: center;">in 2016 at cantabria</div>

		</div>
	</div>
</div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1452738553983"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-6 vc_col-has-fill"><div class="vc_column-inner vc_custom_1452741213708"><div class="wpb_wrapper"><div class="vc_row wpb_row vc_inner vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-8"><div class="vc_column-inner "><div class="wpb_wrapper"><div style="font-size: 36px;color: #003456;line-height: 1;text-align: left;font-family:Roboto Condensed;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1452741039468">Purchase an <strong>early bird ticket</strong> and save!</div></div></div></div><div class="wpb_column vc_column_container vc_col-sm-4"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_single_image wpb_content_element vc_align_center  fullwidth-image ">
		<div class="wpb_wrapper">
			
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img width="188" height="212" src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/ticket.png" class="vc_single_image-img attachment-full" alt="ticket" /></div>
		</div> 
	</div> </div></div></div></div></div></div></div><div class="wpb_column vc_column_container vc_col-sm-6 vc_col-has-fill"><div class="vc_column-inner vc_custom_1452741030300"><div class="wpb_wrapper"><div class="vc_row wpb_row vc_inner vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-4"><div class="vc_column-inner "><div class="wpb_wrapper">
	<div class="wpb_single_image wpb_content_element vc_align_center  fullwidth-image ">
		<div class="wpb_wrapper">
			
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img width="181" height="201" src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/12/mobile.png" class="vc_single_image-img attachment-full" alt="mobile" /></div>
		</div> 
	</div> </div></div></div><div class="wpb_column vc_column_container vc_col-sm-8"><div class="vc_column-inner "><div class="wpb_wrapper"><div style="font-size: 36px;color: #003456;line-height: 1;text-align: left;font-family:Roboto Condensed;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1452741048165">Download the <strong>meetup app</strong> and stay informed</div></div></div></div></div></div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid bg-bottom-right vc_custom_1452919537543"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-6 vc_col-has-fill"><div class="vc_column-inner vc_custom_1452783860310"><div class="wpb_wrapper"><h2 style="font-size: 45px;color: #ffffff;text-align: center;font-family:Roboto Condensed;font-weight:400;font-style:normal" class="vc_custom_heading">REGISTER NOW</h2>	<div id="ninja_forms_form_5_cont" class="ninja-forms-cont">
		<div id="ninja_forms_form_5_wrap" class="ninja-forms-form-wrap">
	<div id="ninja_forms_form_5_response_msg" style="" class="ninja-forms-response-msg "></div>	<form id="ninja_forms_form_5" enctype="multipart/form-data" method="post" name="" action="" class="ninja-forms-form">

	<input type="hidden" id="_wpnonce" name="_wpnonce" value="83b4bdb172" /><input type="hidden" name="_wp_http_referer" value="/festiven/standard/homepage-v2/" />	<input type="hidden" name="_ninja_forms_display_submit" value="1">
	<input type="hidden" name="_form_id"  id="_form_id" value="5">
		<div class="hp-wrap">
		<label>If you are a human and are seeing this field, please leave it blank.			<input type="text" value="" name="_T6H3P">
			<input type="hidden" value="_T6H3P" name="_hp_name">
		</label>
	</div>
		<div id="ninja_forms_form_5_all_fields_wrap" class="ninja-forms-all-fields-wrap">
							<div class="field-wrap text-wrap label-above"  id="ninja_forms_field_6_div_wrap" data-visible="1">
							<input type="hidden" id="ninja_forms_field_6_type" value="text">
		<label for="ninja_forms_field_6" id="ninja_forms_field_6_label" class=""> 				</label>
			<input id="ninja_forms_field_6" data-mask="" data-input-limit="" data-input-limit-type="char" data-input-limit-msg="character(s) left" name="ninja_forms_field_6" type="text" placeholder="Username" class="ninja-forms-field  " value="" rel="6"   />
		<div id="ninja_forms_field_6_error" style="display:none;" class="ninja-forms-field-error">
		</div>
							</div>
												<div class="field-wrap text-wrap label-above"  id="ninja_forms_field_7_div_wrap" data-visible="1">
							<input type="hidden" id="ninja_forms_field_7_type" value="text">
		<label for="ninja_forms_field_7" id="ninja_forms_field_7_label" class=""> 				</label>
			<input id="ninja_forms_field_7" data-mask="" data-input-limit="" data-input-limit-type="char" data-input-limit-msg="character(s) left" name="ninja_forms_field_7" type="text" placeholder="Email Address" class="ninja-forms-field  " value="" rel="7"   />
		<div id="ninja_forms_field_7_error" style="display:none;" class="ninja-forms-field-error">
		</div>
							</div>
												<div class="field-wrap text-wrap label-above"  id="ninja_forms_field_8_div_wrap" data-visible="1">
							<input type="hidden" id="ninja_forms_field_8_type" value="text">
		<label for="ninja_forms_field_8" id="ninja_forms_field_8_label" class=""> 				</label>
			<input id="ninja_forms_field_8" data-mask="" data-input-limit="" data-input-limit-type="char" data-input-limit-msg="character(s) left" name="ninja_forms_field_8" type="text" placeholder="Phone Number" class="ninja-forms-field  " value="" rel="8"   />
		<div id="ninja_forms_field_8_error" style="display:none;" class="ninja-forms-field-error">
		</div>
							</div>
												<div class="field-wrap list-dropdown-wrap label-above"  id="ninja_forms_field_9_div_wrap" data-visible="1">
							<input type="hidden" id="ninja_forms_field_9_type" value="list">
		<input type="hidden" id="ninja_forms_field_9_list_type" value="dropdown">
				<label for="ninja_forms_field_9" id="ninja_forms_field_9_label" class=""> 				</label>
		<select name="ninja_forms_field_9" id="ninja_forms_field_9" class="ninja-forms-field " rel="9">									<option value="Standard Pass" selected style="" >Standard Pass</option>
									<option value="Silver Pass"  style="" >Silver Pass</option>
									<option value="Gold Pass"  style="" >Gold Pass</option>
									<option value="Platinum Pass"  style="" >Platinum Pass</option>
							</select>
				<div id="ninja_forms_field_9_error" style="display:none;" class="ninja-forms-field-error">
		</div>
							</div>
												<div class="field-wrap submit-wrap label-above"  id="ninja_forms_field_10_div_wrap" data-visible="1">
							<input type="hidden" id="ninja_forms_field_10_type" value="submit">
	<div id="nf_submit_5">
		<input type="submit" name="_ninja_forms_field_10" class="ninja-forms-field " id="ninja_forms_field_10" value="Register Now" rel="10" >
	</div>
	<div id="nf_processing_5" style="display:none;">
		<input type="submit" name="_ninja_forms_field_10" class="ninja-forms-field " id="ninja_forms_field_10" value="Processing" rel="10" disabled>
	</div>
		<div id="ninja_forms_field_10_error" style="display:none;" class="ninja-forms-field-error">
		</div>
							</div>
							</div>
		</form>
		</div>
		</div>
	</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner "><div class="wpb_wrapper"></div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid bg-bottom-right vc_custom_1452741713176"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner vc_custom_1452666771200"><div class="wpb_wrapper"></div></div></div><div class="highlight-right wpb_column vc_column_container vc_col-sm-6 vc_col-has-fill"><div class="vc_column-inner vc_custom_1452782103946"><div class="wpb_wrapper"><div
	class="vc_icon_element vc_icon_element-outer vc_custom_1452833695005 vc_icon_element-align-center">
	<div class="vc_icon_element-inner vc_icon_element-color-custom vc_icon_element-size-xl vc_icon_element-style- vc_icon_element-background-color-grey"><span class="vc_icon_element-icon fa fa-twitter" style="color:#5fb0f0 !important"></span></div>
</div>
<div style="font-size: 24px;color: #ffffff;line-height: 1.5;text-align: center;font-family:Roboto;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1452833668443">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem ipsa facere, Ab libero necessitatibus quas officiis, cumque quibusdam praesentium iusto animi iure!</div><p style="font-size: 14px;color: rgba(255,255,255,0.62);text-align: center;font-family:Roboto;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1452741946364">Posted on 10 Jan 2016</p></div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid vc_custom_1452676824617 vc_row-no-padding"><span class="tokoo-row-overlay" style="background-color:"></span><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper">
<div id="map-component" style="height:450px" data-lat="-6.9022725" data-long="107.6731303" data-marker-title="Festiven Venue" data-marker-content=""></div></div></div></div></div><div class="vc_row-full-width"></div><div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid has-overlay vc_custom_1452782312252"><span class="tokoo-row-overlay" style="background-color:rgba(0,88,221,0.77)"></span><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><div style="font-size: 64px;color: #ffffff;line-height: 1;text-align: center;font-family:Roboto Condensed;font-weight:700;font-style:normal" class="vc_custom_heading">WordCamp</div><div style="font-size: 50px;color: #ffffff;line-height: 1;text-align: center;font-family:Roboto Condensed;font-weight:300;font-style:normal" class="vc_custom_heading vc_custom_1452833757432">WHAT ARE YOU WAITING FOR? MEETUP ON 2019?</div>
	<div class="wpb_text_column wpb_content_element ">
		<div class="wpb_wrapper">
			<p style="text-align: center;"><span style="color: #ffffff;">7-8 NOVIEMBRE, PALACIO DE LA MAGDALENA</span></p>

		</div>
	</div>
<div class="vc_btn3-container vc_btn3-center vc_custom_1451381695903"><button class="vc_general vc_btn3 vc_btn3-size-lg vc_btn3-shape-square vc_btn3-style-outline vc_btn3-color-white">REGISTER NOW</button></div>
</div></div></div></div><div class="vc_row-full-width"></div>

		
				
			</div><!-- .container -->
	
</main> <!-- .main-content --> 
		<!-- .main-content -->
		
		
		
	<script type="text/javascript">
			function revslider_showDoubleJqueryError(sliderID) {
				var errorMessage = "Revolution Slider Error: You have some jquery.js library include that comes after the revolution files js include.";
				errorMessage += "<br> This includes make eliminates the revolution slider libraries, and make it not work.";
				errorMessage += "<br><br> To fix it you can:<br>&nbsp;&nbsp;&nbsp; 1. In the Slider Settings -> Troubleshooting set option:  <strong><b>Put JS Includes To Body</b></strong> option to true.";
				errorMessage += "<br>&nbsp;&nbsp;&nbsp; 2. Find the double jquery.js include and remove it.";
				errorMessage = "<span style='font-size:16px;color:#BC0C06;'>" + errorMessage + "</span>";
					jQuery(sliderID).show().html(errorMessage);
			}
		</script>
		
		
		<jsp:include page="layouts/footer.jsp"></jsp:include>
		
		
		
		

	</div>
	<!-- .site-content -->

	
</body>
</html>
