/**
 * cbpFWTabs.js v1.0.0
 * http://www.codrops.com
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 * 
 * Copyright 2014, Codrops
 * http://www.codrops.com
 */
!function(t){"use strict";function s(t,s){for(var i in s)s.hasOwnProperty(i)&&(t[i]=s[i]);return t}function i(t,i){this.el=t,this.options=s({},this.options),s(this.options,i),this._init()}i.prototype.options={start:0},i.prototype._init=function(){this.tabs=[].slice.call(this.el.querySelectorAll("nav > ul > li")),this.items=[].slice.call(this.el.querySelectorAll(".tabs-content > section")),this.current=-1,this._show(),this._initEvents()},i.prototype._initEvents=function(){var t=this;this.tabs.forEach(function(s,i){s.addEventListener("click",function(s){s.preventDefault(),t._show(i)})})},i.prototype._show=function(t){this.current>=0&&(this.tabs[this.current].className="",this.items[this.current].className=""),this.current=void 0!=t?t:this.options.start>=0&&this.options.start<this.items.length?this.options.start:0,this.tabs[this.current].className="tab-current",this.items[this.current].className="content-current"},t.CBPFWTabs=i}(window);