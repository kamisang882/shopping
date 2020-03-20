window.onload = function(){
	var check = getClass("check");
	var priceTotal = document.getElementById("priceTotal");
	var selectTotal = document.getElementById("selectTotal");

	for(var i=0; i<check.length; i++){
		check[i].onclick = function(){			
			if(this.className=='check-all check'){
				for(var j=0;j<check.length;j++){
				check[j].checked = this.checked;
				}
			}
			getTotal();
		}
	}
} 
//合计已选，商品件数
function getTotal(){
	var tr = document.getElementsByClassName("tr2");
	var price = 0;
	var sum = 0;
	var orderArr = [];
	for(var i=0; i<tr.length;i++){
		var input = tr[i].getElementsByTagName("input");
		if(input[0].checked){
			orderArr.push(tr[i])
			price+=parseFloat(tr[i].getElementsByTagName("td")[4].innerText)
			sum++
			parseInt(sum)
		}
	}
	priceTotal.innerText = price.toFixed(2);
	selectTotal.innerText = sum;
	return orderArr;
}

//获取className
function getClass(cName){
	var doms = document.getElementsByTagName("*");
	var domArr = [];
	for(var i=0; i<doms.length;i++){
		
		if(doms[i].className==cName || doms[i].className.indexOf(' '+cName)!=-1 || doms[i].className.indexOf(cName+' ')!=-1){
			domArr.push(doms[i]);
		}
	}
	return domArr;
}

function delete_collection(gid){	
	$.post("deleteCollection.do",{"gid":gid},function(data){
		if(data){
			alert("删除成功");
			location.href="showcar.do";
		}
	})
}

function pay(){
	var price = document.getElementById("priceTotal").innerText;
	var order = getTotal();
	var ordergid = [];
	for(var i=0; i<order.length;i++){
		ordergid.push(order[i].getElementsByTagName("td")[0].innerText)
	}
	const goodsID=ordergid.join()
	$.post("payAll.do",{"price":price,"goodsID":goodsID},function(data){
		if(data){
			console.log(data.order_Id)
			location.href="alipay.do?test="+ 123 +"&gids="+data.gids +"&price="+data.price+"&Order_Id="+data.order_Id+"";
		}
	}
	)

}