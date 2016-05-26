!function(){tinymce.PluginManager.requireLangPack("uploadimage"),tinymce.create("tinymce.plugins.UploadImage",{UploadImage:function(e,t){function a(){p=h.windowManager.open({title:e.translate("Insert an image from your computer"),width:500+parseInt(h.getLang("uploadimage.delta_width",0),10),height:180+parseInt(h.getLang("uploadimage.delta_height",0),10),body:[{type:"iframe",url:"javascript:void(0)"},{type:"textbox",name:"file",label:e.translate("Choose an image"),subtype:"file"},{type:"textbox",name:"alt",label:e.translate("Image description")},{type:"container",classes:"error",html:"<p style='color: #b94a48;'>&nbsp;</p>"},{type:"container",classes:"throbber"}],buttons:[{text:e.translate("Insert"),onclick:n,subtype:"primary"},{text:e.translate("Cancel"),onclick:e.windowManager.close}]},{plugin_url:t}),p.off("submit"),p.on("submit",n),s=p.find("iframe")[0],d=m("form",{action:e.getParam("uploadimage_form_url","/tinymce_assets"),target:s._id,method:"POST",enctype:"multipart/form-data",accept_charset:"UTF-8"}),s.getEl().name=s._id,d.appendChild(m("input",{type:"hidden",name:"utf8",value:"\u2713"})),d.appendChild(m("input",{type:"hidden",name:"authenticity_token",value:u("csrf-token")})),d.appendChild(m("input",{type:"hidden",name:"hint",value:e.getParam("uploadimage_hint","")}));for(var a=p.getEl(),i=document.getElementById(a.id+"-body"),r=i.getElementsByClassName("mce-container"),o=0;o<r.length;o++)d.appendChild(r[o]);for(var l=d.getElementsByTagName("input"),o=0;o<l.length;o++){var g=l[o];"input"==g.tagName.toLowerCase()&&"hidden"!=g.type&&("file"==g.type?(g.name="file",tinymce.DOM.setStyles(g,{border:0,boxShadow:"none",webkitBoxShadow:"none"})):g.name="alt")}i.appendChild(d)}function n(){if(""==c("file"))return l("You must choose a file");f=new top.tinymce.ui.Throbber(p.getEl()),f.show(),o();var e=s.getEl();e.attachEvent?(e.detachEvent("onload",i),e.attachEvent("onload",i)):(e.removeEventListener("load",i),e.addEventListener("load",i,!1)),d.submit()}function i(){f&&f.hide();var e=s.getEl();if(e.document||e.contentDocument){var t=e.contentDocument||e.contentWindow.document;r(t.getElementsByTagName("body")[0].innerHTML)}else l("Didn't get a response from the server")}function r(t){try{var a=tinymce.util.JSON.parse(t);a.error?l(a.error.message):(e.execCommand("mceInsertContent",!1,g(a)),e.windowManager.close())}catch(n){l("Got a bad response from the server")}}function o(){var e=p.find(".error")[0].getEl();e&&(e.getElementsByTagName("p")[0].innerHTML="&nbsp;")}function l(t){var a=p.find(".error")[0].getEl();a&&(a.getElementsByTagName("p")[0].innerHTML=e.translate(t))}function m(e,t){var a=document.createElement(e);for(var n in t)t[n]instanceof Function||(a[n]=t[n]);return a}function g(t){var a=e.getParam("uploadimage_default_img_class",""),n=e.getParam("uploadimage_figure",!1),i=c("alt"),r="<img src='"+t.image.url+"'";if(""!=a&&(r+=" class='"+a+"'"),t.image.height&&(r+=" height='"+t.image.height+"'"),t.image.width&&(r+=" width='"+t.image.width+"'"),r+=" alt='"+i+"'/>",n){var o=e.getParam("uploadimage_figure_class","figure"),l=e.getParam("uploadimage_figcaption_class","figcaption"),m="<figure";return""!==o&&(m+=" class='"+o+"'"),m+=">"+r,m+="<figcaption",""!=l&&(m+=" class='"+l+"'"),m+=">"+i+"</figcaption>",m+="</figure>"}return r}function c(e){var t=d.getElementsByTagName("input");for(var a in t)if(t[a].name==e)return t[a].value;return""}function u(e){var t=document.getElementsByTagName("meta");for(var a in t)if(t[a].name==e)return t[a].content;return null}var d,s,p,f,h=e;h.addButton("uploadimage",{tooltip:e.translate("Insert an image from your computer"),icon:"image",onclick:a}),h.addMenuItem("uploadimage",{text:e.translate("Insert an image from your computer"),icon:"image",context:"insert",onclick:a})}}),tinymce.PluginManager.add("uploadimage",tinymce.plugins.UploadImage)}();