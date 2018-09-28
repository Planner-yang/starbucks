// 百度地图API功能  Baidu maps API features
	var map = new BMap.Map("allmap");
	//var lng,lat;
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,12);
	var geolocation = new BMap.Geolocation();
	//alert('正在定位，请稍后...');
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
			startOper(map,r);
		}
		else {
			alert('failed'+this.getStatus());
		}        
	},{enableHighAccuracy: true})
	
	setTimeout(function(){
		map.setZoom(14);   
	}, 1000);  //2秒后放大到14级
	map.enableScrollWheelZoom(true);
	
	//查找我的位置 Find my place
	function myPosition(){
		geolocation.getCurrentPosition(function(r){
			if(this.getStatus() == BMAP_STATUS_SUCCESS){
				
				startOper(map,r);
			}
			else {
				alert('failed'+this.getStatus());
			}        
		},{enableHighAccuracy: true})
	}
	//启动定位操作  Boot location operation
	function startOper(map,r){
		//使用新图标替换原始图标
		var myIcon = new BMap.Icon("static/assets/images/myIcon.png", new BMap.Size(300,157));
		var mk = new BMap.Marker(r.point,{icon:myIcon});
		mk.enableDragging(); //设置其可拖拽   
		mk.addEventListener("dragend", function(e){    
		 	addressAnalysis(e.point,mk);
		});
		var label = new BMap.Label("",{offset:new BMap.Size(110,70)});
		map.addOverlay(mk);
		mk.setLabel(label);
		map.panTo(r.point);
		// lng=r.point.lng;
		//lat=r.point.lat;
		addressAnalysis(r.point);
	} 
	//店铺寻找  Shop looking
	function search(){
		var allOverlay = map.getOverlays();
		for (var i = 0; i < allOverlay.length -1; i++){
			try{
				if(allOverlay[i].getLabel().content  == "搜索周边"||allOverlay[i].getLabel().content  == ""){
				}
				else{
					map.removeOverlay(allOverlay[i]);
				}
			}catch(e){
				map.removeOverlay(allOverlay[i]);
			}
		}
		var selectInfo=document.getElementById("selectInfo").value;
		//map.centerAndZoom(new BMap.Point(lng, lat), 11);
		var local = new BMap.LocalSearch(map, {
  			renderOptions:{map: map, autoViewport:true}
		});
		local.searchNearby(selectInfo, "附近");
		
	}
		
	//地址解析器  Address parser
	function addressAnalysis(point,marker){
		var gc = new BMap.Geocoder(); 
		gc.getLocation(point, function(rs)
		{
			var opts = {
				width : 250,     // 信息窗口宽度
				height: 30,     // 信息窗口高度
				//title : "此为自定义信息窗口" , // 信息窗口标题
				enableMessage:true//设置允许信息窗发送短息
			 };
			 var addComp = rs.addressComponents;
			 var adr=addComp.province+addComp.city + addComp.district + addComp.street;
			 document.getElementById("location").value=adr;
		});
	}