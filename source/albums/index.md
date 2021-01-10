---
title: 相册
date: 2021-01-10 10:57:00
type: albums
layout: album
---

功能开发中。。。

<div class="photos-btn-wrap">
  <a class="photos-btn active" href="javascript:void(0)" target="_blank" rel="external">Photos</a>
</div>
<div class="instagram itemscope">
  <a href="http://yourbolg.com" target="_blank" class="open-ins">图片正在加载中…</a>
</div>
 
<script>
  (function() {
    var loadScript = function(path) {
      var $script = document.createElement('script')
      document.getElementsByTagName('body')[0].appendChild($script)
      $script.setAttribute('src', path)
    }
    setTimeout(function() {
        // loadScript('../lib/album/ins.js')
    }, 0)
  })()
</script>