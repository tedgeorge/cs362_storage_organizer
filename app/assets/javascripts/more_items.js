
var item_count = 0;

function addItemField() {	
	var i = 0;
	if(document.getElementById("storage_container_items_attributes_" + i + "_name") != null){
		while(document.getElementById("storage_container_items_attributes_" + i + "_name") != null){
			i++;
		}
	}
	item_count = i;
	
   ItemAttributeId = "storage_container_items_attributes_0_name".replace("0", item_count);
   ItemAttributeName = "storage_container[items_attributes][0][name]".replace("0", item_count);
   
	var Label = document.createElement("LABEL");
	Label.setAttribute("for", ItemAttributeId);
	Label.innerHTML = "Item";
	
   var inputItem = document.createElement("INPUT");
   inputItem.setAttribute("type", "text");
   inputItem.setAttribute("id", ItemAttributeId);
   inputItem.setAttribute("name", ItemAttributeName);
	Label.appendChild(inputItem);
	Label.appendChild(document.createElement("BR"))

   document.getElementById("item_list").appendChild(Label);
	item_count++;
}