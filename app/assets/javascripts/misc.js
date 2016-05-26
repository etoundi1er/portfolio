// Highlight.js call. A plugin for code highlighting by https://github.com/isagalaev/highlight.js
$('pre code').each(function(i, block) {
    hljs.highlightBlock(block);
});


// remove anchor from URL http://www.codingforums.com/javascript-programming/149356-delete-hash-address-bar.html#post737202
// in the view, call the link using the onclick method like this: <a href="#share" class="trigger-share" onclick='return anchorJump(this.href)'>share</a>

function anchorJump( anchor )
{
  var targAnchor=null, anchorID=anchor.replace(/.*#([^\?]+).*/,'$1');   
   
  if( !(targAnchor=document.getElementById( anchorID )) )
   for(var i=0, found=false, da=document.anchors, len=da.length; i<len && !targAnchor; i++)
    targAnchor = (da[i].name==anchorID ? da[i] : null); 
  
  if(targAnchor)  
  {
   disp=getElemOffset(targAnchor);
   window.scrollTo(disp.x, disp.y);
  }
  else
   alert('Did not find element "'+anchorID+'"');
 
  function getElemOffset(elem)
  {
   var left = !!elem.offsetLeft ? elem.offsetLeft : 0;
   var top = !!elem.offsetTop ? elem.offsetTop : 0;
  
   while((elem = elem.offsetParent))
   { 
    left += !!elem.offsetLeft ? elem.offsetLeft : 0;
    top += !!elem.offsetTop ? elem.offsetTop : 0;
   }
  
   return {x:left, y:top};  
  }

 return false; 
}