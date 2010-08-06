snippet '$ (Select DOM Element)' do |s|
  s.trigger = '$'
  s.scope = 'source.js'
  s.expansion = '\$(${1/(.+)/(?1:\':)/}${1:string/element/array/function/jQuery object/string, context}${1/(.+)/(?1:\':)/})$0'
end

snippet '$(this)' do |s|
  s.trigger = 'this'
  s.scope = 'source.js'
  s.expansion = '\$(this)$0'
end

snippet '$.ajax' do |s|
  s.trigger = '$.ajax'
  s.scope = 'source.js'
  s.expansion = '\$.ajax({
  url: \'${1:/path/to/file}\',
${2/(.+)/(?1:  type\: \':)/}${2:POST}${2/(.+)/(?1:\',
:)/}${3/(.+)/(?1:  dataType\: \':)/}${3:xml/html/script/json/jsonp}${3/(.+)/(?1:\',
:)/}${4/(.+)/(?1:  data\: {:)/}${4:param1: \'value1\'}${4/(.+)/(?1:},
:)/}${5/(.+)/(?1:  complete\: function\(xhr, textStatus\) {
    :)/}${5://called when complete}${5/(.+)/(?1:
  },
:)/}${6/(.+)/(?1:  success\: function\(data, textStatus, xhr\) {
    :)/}${6://called when successful}${6/(.+)/(?1:
  },
:)/}${7/(.+)/(?1:  error\: function\(xhr, textStatus, errorThrown\) {
    :)/}${7://called when there is an error}
${7/(.+)/(?1:  }
:)/}});
$0'
end

snippet 'ajaxError' do |s|
  s.trigger = '.ajaxError'
  s.scope = 'source.js'
  s.expansion = '.ajaxError(function(${1:event, xhr, settings, thrownError}) {
  ${2://stuff to do when an AJAX call returns an error};
});
$0'
end

snippet 'ajaxSend' do |s|
  s.trigger = '.ajaxSend'
  s.scope = 'source.js'
  s.expansion = '.ajaxSend(function(${1:event, xhr, settings}) {
  ${2://stuff to do before an AJAX request is sent};
});
$0'
end

snippet '$.ajaxSetup' do |s|
  s.trigger = '$.ajaxSetup'
  s.scope = 'source.js'
  s.expansion = '\$.ajaxSetup({
  url: \'${1:/path/to/file}\',
${2/(.+)/(?1:  type\: \':)/}${2:POST}${2/(.+)/(?1:\',
:)/}${3/(.+)/(?1:  dataType\: \':)/}${3:xml/html/script/json/jsonp}${3/(.+)/(?1:\',
:)/}${4/(.+)/(?1:  data\: {:)/}${4:param1: \'value1\'}${4/(.+)/(?1:},
:)/}${5/(.+)/(?1:  complete\: function\(xhr, textStatus\) {
    :)/}${5://called when complete}${5/(.+)/(?1:
  },
:)/}${6/(.+)/(?1:  success\: function\(data, textStatus, xhr\) {
    :)/}${6://called when successful}${6/(.+)/(?1:
  },
:)/}${7/(.+)/(?1:  error\: function\(xhr, textStatus, errorThrown\) {
    :)/}${7://called when there is an error}
${7/(.+)/(?1:  }
:)/}});
$0'
end

snippet 'ajaxStart' do |s|
  s.trigger = '.ajaxStart'
  s.scope = 'source.js'
  s.expansion = '.ajaxStart(function() {
  ${1://stuff to do when an AJAX call is started and no other AJAX calls are in progress};
});
$0'
end

snippet 'ajaxStop' do |s|
  s.trigger = '.ajaxStop'
  s.scope = 'source.js'
  s.expansion = '.ajaxStop(function() {
  ${1://stuff to do when all AJAX calls have completed};
});
$0'
end

snippet 'ajaxSuccess' do |s|
  s.trigger = '.ajaxSuccess'
  s.scope = 'source.js'
  s.expansion = '.ajaxSuccess(function(event, xhr, settings) {
	${1:// executes whenever an AJAX request completes successfully}
});$0'
end

snippet '$.boxModel' do |s|
  s.trigger = '$.boxModel'
  s.scope = 'source.js'
  s.expansion = '\$.boxModel'
end

snippet '$.browser' do |s|
  s.trigger = '$.browser'
  s.scope = 'source.js'
  s.expansion = '\$.browser${1/(.+)/(?1:.:)/}${1:webkit/opera/msie/mozilla}${1/(.+)/(?1: :)/}$0'
end

snippet '$.browser.version' do |s|
  s.trigger = '$.browser'
  s.scope = 'source.js'
  s.expansion = '\$.browser.version'
end

snippet '$.each' do |s|
  s.trigger = '$.each'
  s.scope = 'source.js'
  s.expansion = '\$.each(${1:array/object}, function(${2:index}${3:, ${4:val}}) {
  ${0://iterate through array or object}
});'
end

snippet '$.extend' do |s|
  s.trigger = '$.extend'
  s.scope = 'source.js'
  s.expansion = '\$.extend(${1:true, }${2:target object}, ${3:object1});
$0'
end

snippet '$.get' do |s|
  s.trigger = '$.get'
  s.scope = 'source.js'
  s.expansion = '\$.get(\'${1:/path/to/file}\'${2/(.+)/(?1:, {:)/}${2:param1: \'value1\'}${2/(.+)/(?1:}:)/}${3/(.+)/(?1:, function\(data, textStatus, xhr\) {
  :)/}${3://optional stuff to do after success}${3/(.+)/(?1:
}:)/});
$0'
end

snippet '$.getJSON' do |s|
  s.trigger = '$.getJSON'
  s.scope = 'source.js'
  s.expansion = '\$.getJSON(\'${1:/path/to/file}\'${2/(.+)/(?1:, {:)/}${2:param1: \'value1\'}${2/(.+)/(?1:}:)/}${3/(.+)/(?1:, function\(json, textStatus\) {
  :)/}${3://optional stuff to do after success}${3/(.+)/(?1:
}:)/});
$0'
end

snippet '$.getScript' do |s|
  s.trigger = '$.getScript'
  s.scope = 'source.js'
  s.expansion = '\$.getScript(\'${1:path/to/file}\'${2/(.+)/(?1:, function\(data, textStatus\) {
  :)/}${2://optional stuff to do after getScript}${2/(.+)/(?1:
}:)/});
$0'
end

snippet '$.inArray' do |s|
  s.trigger = '$.inArray'
  s.scope = 'source.js'
  s.expansion = '\$.inArray(${1:value}, ${2:array});$0'
end

snippet '$.isEmptyObject' do |s|
  s.trigger = '$.isEmptyObject'
  s.scope = 'source.js'
  s.expansion = '\$.isEmptyObject(\'${1:object}\')$0'
end

snippet '$.isPlainObject' do |s|
  s.trigger = '$.isPlainObject'
  s.scope = 'source.js'
  s.expansion = '\$.isPlainObject(\'${1:object}\')$0'
end

snippet '$.map' do |s|
  s.trigger = '$.map'
  s.scope = 'source.js'
  s.expansion = '\$.map(${1:array}, function(${2:item}${3:, ${4:index}}) {
  ${5:return ${6:something};}
});'
end

snippet '$.merge' do |s|
  s.trigger = '$.merge'
  s.scope = 'source.js'
  s.expansion = '\$.merge(${1:array1}, ${2:array2});
$0'
end

snippet '$.noop' do |s|
  s.trigger = '$.noop'
  s.scope = 'source.js'
  s.expansion = '\$.noop()${0:;}${1:}'
end

snippet '$.parseJSON' do |s|
  s.trigger = '$.parseJSON'
  s.scope = 'source.js'
  s.expansion = '\$.parseJSON(${1:json});${0:}'
end

snippet '$.post' do |s|
  s.trigger = '$.post'
  s.scope = 'source.js'
  s.expansion = '\$.post(\'${1:/path/to/file}\'${2/(.+)/(?1:, {:)/}${2:param1: \'value1\'}${2/(.+)/(?1:}:)/}${3/(.+)/(?1:, function\(data, textStatus, xhr\) {
  :)/}${3://optional stuff to do after success}${3/(.+)/(?1:
}:)/});
$0'
end

snippet '$.trim' do |s|
  s.trigger = '$.trim'
  s.scope = 'source.js'
  s.expansion = '\$.trim(${1:\'${2:string}\'})$0'
end

snippet '$.unique' do |s|
  s.trigger = '$.unique'
  s.scope = 'source.js'
  s.expansion = '\$.unique(${1:DOMelementArray});
$0'
end

snippet ':button' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':button'
end

snippet ':checkbox' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':checkbox'
end

snippet ':checked' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':checked'
end

snippet ':contains(\'test\')' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':contains(\'${1:test}\')$0'
end

snippet ':disabled' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':disabled'
end

snippet ':empty' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':empty'
end

snippet ':enabled' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':enabled'
end

snippet ':eq(n)' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':eq(${1:n})$0'
end

snippet ':even' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':even'
end

snippet ':file' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':file'
end

snippet ':first-child' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':first-child'
end

snippet ':first' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':first'
end

snippet ':gt(n)' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':gt(${1:n})$0'
end

snippet ':hidden' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':hidden
'
end

snippet ':image' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':image'
end

snippet ':input' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':input'
end

snippet ':last-child' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':last-child'
end

snippet ':last' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':last'
end

snippet ':lt(n)' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':lt(${1:n})$0'
end

snippet ':not(s)' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':not(${1:s})$0'
end

snippet ':nth-child(n)' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':nth-child(${1:n})$0'
end

snippet ':odd' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':odd'
end

snippet ':only-child' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':only-child'
end

snippet ':parent' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':parent
'
end

snippet ':password' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':password'
end

snippet ':radio' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':radio'
end

snippet ':reset' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':reset'
end

snippet ':root' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':root'
end

snippet ':selected' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':selected'
end

snippet ':submit' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':submit'
end

snippet ':text' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+M3+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':text'
end

snippet ':visible' do |s|
  s.trigger = ':'
  s.key_binding = 'M4+:'
  s.scope = 'source.js meta.selector.jquery'
  s.expansion = ':visible
'
end

snippet 'add' do |s|
  s.trigger = '.add'
  s.scope = 'source.js'
  s.expansion = '.add(\'${1:selector/elements/html}\')$0'
end

snippet 'addClass' do |s|
  s.trigger = '.addClass'
  s.scope = 'source.js'
  s.expansion = '.addClass(\'${1:class name}\')$0'
end

snippet 'after' do |s|
  s.trigger = '.after'
  s.scope = 'source.js'
  s.expansion = '.after(\'${1:Some text <b>and bold!</b>}\')$0'
end

snippet 'ajaxComplete' do |s|
  s.trigger = '.ajaxComplete'
  s.scope = 'source.js'
  s.expansion = '.ajaxComplete(function(event, xhr, settings) {
	${1:// executes whenever an AJAX request completes}
});$0'
end

snippet 'andSelf' do |s|
  s.trigger = '.andSelf'
  s.scope = 'source.js'
  s.expansion = '.andSelf()$0'
end

snippet 'animate (with callback)' do |s|
  s.trigger = '.animate'
  s.scope = 'source.js'
  s.expansion = '.animate({${2:param1}: ${3:value1}${4:, ${5:param2}: ${6:value2}}}, ${7:speed}, function() {
  ${0:// stuff to do after animation is complete}
})'
end

snippet 'animate' do |s|
  s.trigger = '.animate'
  s.scope = 'source.js'
  s.expansion = '.animate({${1:${2:param1}: ${3:value1}${4:, ${5:param2}: ${6:value2}}}}, ${7:speed})$0'
end

snippet 'append' do |s|
  s.trigger = '.append'
  s.scope = 'source.js'
  s.expansion = '.append(\'${1:Some text <b>and bold!</b>}\')$0'
end

snippet 'appendTo' do |s|
  s.trigger = '.appendTo'
  s.scope = 'source.js'
  s.expansion = '.appendTo(\'${1:selector expression}\')$0'
end

snippet 'attr (map)' do |s|
  s.trigger = '.attr'
  s.scope = 'source.js'
  s.expansion = '.attr({
  ${1/^([^\'"].+-.+)$|.+/(?1:\':)/}${1:attribute1}${1/^([^\'"].+-.+[^\'"])$|.+/(?1:\':)/}: ${3:\'${2:value1}\'}${4/([^,]).*|.+/(?1:,
  :)/m}${4:attribute2: \'value2\'}
})$0'
end

snippet 'attr' do |s|
  s.trigger = '.attr'
  s.scope = 'source.js'
  s.expansion = '.attr(\'${1:attribute}\'${2/(^,).*|.+/(?1::, )/}${2/(^([0-9]+$|,.*))|.+/(?1::\')/}${2:value}${2/(^([0-9]+$|,.*))|.+/(?1::\')/})$0'
end

snippet 'before' do |s|
  s.trigger = '.before'
  s.scope = 'source.js'
  s.expansion = '.before(\'${1:Some text <b>and bold!</b>}\')$0'
end

snippet 'bind' do |s|
  s.trigger = '.bind'
  s.scope = 'source.js'
  s.expansion = '.bind(\'${1:event name}\', function(${2:event}) {
  ${0:// Act on the event}
});'
end

snippet 'blur' do |s|
  s.trigger = '.blur'
  s.scope = 'source.js'
  s.expansion = '.blur(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'change' do |s|
  s.trigger = '.change'
  s.scope = 'source.js'
  s.expansion = '.change(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'children' do |s|
  s.trigger = '.children'
  s.scope = 'source.js'
  s.expansion = '.children(${1/(.+)/(?1:\':)/}${1:selector expression}${1/(.+)/(?1:\':)/})$0'
end

snippet 'clearqueue' do |s|
  s.trigger = '.clearQueue'
  s.scope = 'source.js'
  s.expansion = '.clearQueue(${1/(.+)/(?1:\':)/}${1:queueName}${1/(.+)/(?1:\':)/})$0'
end

snippet 'click' do |s|
  s.trigger = '.click'
  s.scope = 'source.js'
  s.expansion = '.click(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'clone' do |s|
  s.trigger = 'clone'
  s.scope = 'source.js'
  s.expansion = '.clone()$0'
end

snippet 'filter' do |s|
  s.trigger = '.filter'
  s.scope = 'source.js'
  s.expansion = '.filter(\'${1:selector expression}\')$0'
end

snippet 'contains' do |s|
  s.trigger = '.contains'
  s.scope = 'source.js'
  s.expansion = '.contains(\'${1:text to find}\')$0'
end

snippet 'contents' do |s|
  s.trigger = '.contents'
  s.scope = 'source.js'
  s.expansion = '.contents()$0'
end

snippet 'css (map)' do |s|
  s.trigger = '.css'
  s.scope = 'source.js'
  s.expansion = '.css({
  ${1/^([^\'"].+-.+)$|.+/(?1:\':)/}${1:property1}${1/^([^\'"].+-.+[^\'"])$|.+/(?1:\':)/}: ${3:\'${2:value1}\'}${4/^([^,]).*|.+/(?1:,
  :)/m}${4:property2: \'value2\'}
})$0'
end

snippet 'css' do |s|
  s.trigger = '.css'
  s.scope = 'source.js'
  s.expansion = '.css(\'${1:property}\'${2/(^,).*|.+/(?1::, )/}${2/(^([0-9]+$|,.*))|.+/(?1::\')/}${2:value}${2/(^([0-9]+$|,.*))|.+/(?1::\')/})$0'
end

snippet 'data' do |s|
  s.trigger = '.data'
  s.scope = 'source.js'
  s.expansion = '.data(\'${1:data}\'${2/(.+)/(?1:, :)/}${2/(^[0-9]+$)|.+/(?1::\')/}${2:value}${2/(^[0-9]+$)|.+/(?1::\')/})$0'
end

snippet 'dblclick' do |s|
  s.trigger = '.dblclick'
  s.scope = 'source.js'
  s.expansion = '.dblclick(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'delay' do |s|
  s.trigger = '.delay'
  s.scope = 'source.js'
  s.expansion = '.delay(${1:milliseconds}${2/^([^,]|\w).*$|.+/(?1:, :)/}${2:queueName})$0'
end

snippet 'delegate' do |s|
  s.trigger = '.delegate'
  s.scope = 'source.js'
  s.expansion = '.delegate(\'${1:selector}\', \'${2:event type(s)}\'${3/(^{).*|.+/(?1::, {)/}${3:value}${3/(^(}.+$|,.*))|.+/(?1::})/}, function(${4:event}) {
	${0:// Act on the event}
});'
end

snippet 'dequeue' do |s|
  s.trigger = '.dequeue'
  s.scope = 'source.js'
  s.expansion = '.dequeue(${1/(.+)/(?1:\':)/}${1:queueName}${1/(.+)/(?1:\':)/})$0'
end

snippet 'die' do |s|
  s.trigger = '.die'
  s.scope = 'source.js'
  s.expansion = '.die(\'${1:click/dblclick/mousedown/mouseup/mousemove/mouseover/mouseout/keydown/keypress/keyup}\')$0'
end

snippet 'document ready (safe)' do |s|
  s.trigger = 'ready'
  s.scope = 'source.js'
  s.expansion = 'jQuery(document).ready(function(\$) {
	${0:// Stuff to do as soon as the DOM is ready. Use \$() w/o colliding with other libs;}
});
'
end

snippet 'document ready' do |s|
  s.trigger = 'ready'
  s.scope = 'source.js'
  s.expansion = '\$(document).ready(function() {
	${0:// Stuff to do as soon as the DOM is ready;}
});
'
end

snippet 'each' do |s|
  s.trigger = '.each'
  s.scope = 'source.js'
  s.expansion = '.each(function(index) {
  ${0:this.innerHTML = this + " is the element, " + index + " is the position";}
});'
end

snippet 'end' do |s|
  s.trigger = '.end'
  s.scope = 'source.js'
  s.expansion = '.end()$0'
end

snippet 'eq' do |s|
  s.trigger = '.eq'
  s.scope = 'source.js'
  s.expansion = '.eq(${1:index})$0'
end

snippet 'error' do |s|
  s.trigger = '.error'
  s.scope = 'source.js'
  s.expansion = '.error(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'fadeIn (with callback)' do |s|
  s.trigger = '.fadeIn'
  s.scope = 'source.js'
  s.expansion = '.fadeIn(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/}, function() {
	${0://Stuff to do *after* the animation takes place};
});
'
end

snippet 'fadeIn' do |s|
  s.trigger = '.fadeIn'
  s.scope = 'source.js'
  s.expansion = '.fadeIn(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/})$0'
end

snippet 'fadeOut (with callback)' do |s|
  s.trigger = '.fadeOut'
  s.scope = 'source.js'
  s.expansion = '.fadeOut(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/}, function() {
	${0://Stuff to do *after* the animation takes place};
});
'
end

snippet 'fadeOut' do |s|
  s.trigger = '.fadeOut'
  s.scope = 'source.js'
  s.expansion = '.fadeOut(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/})$0'
end

snippet 'fadeTo (with callback)' do |s|
  s.trigger = '.fadeTo'
  s.scope = 'source.js'
  s.expansion = '.fadeTo(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/}, ${2:0.5}, function() {
	${0://Stuff to do *after* the animation takes place};
});
'
end

snippet 'fadeTo' do |s|
  s.trigger = '.fadeTo'
  s.scope = 'source.js'
  s.expansion = '.fadeTo(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/}, ${2:0.5})$0'
end

snippet 'filter (function)' do |s|
  s.trigger = '.filter'
  s.scope = 'source.js'
  s.expansion = '.filter(function(index) {
  ${1:return ${2:something};}
})'
end

snippet 'closest' do |s|
  s.trigger = '.closest'
  s.scope = 'source.js'
  s.expansion = '.closest(\'${1:selector expression}\')$0'
end

snippet 'find' do |s|
  s.trigger = '.find'
  s.scope = 'source.js'
  s.expansion = '.find(\'${1:selector expression}\')$0'
end

snippet 'first' do |s|
  s.trigger = '.first'
  s.scope = 'source.js'
  s.expansion = '.first()$0'
end

snippet 'focus' do |s|
  s.trigger = '.focus'
  s.scope = 'source.js'
  s.expansion = '.focus(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'focusin' do |s|
  s.trigger = '.focusin'
  s.scope = 'source.js'
  s.expansion = '.focusin(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'focusout' do |s|
  s.trigger = '.focusout'
  s.scope = 'source.js'
  s.expansion = '.focusout(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'get' do |s|
  s.trigger = '.get'
  s.scope = 'source.js'
  s.expansion = '.get(${1:element index})$0'
end

snippet 'has' do |s|
  s.trigger = '.has'
  s.scope = 'source.js'
  s.expansion = '.has(${1/(.+)/(?1:\':)/}${1:contained selector/element}${1/(.+)/(?1:\':)/})$0'
end

snippet 'hasClass' do |s|
  s.trigger = '.hasClass'
  s.scope = 'source.js'
  s.expansion = '.hasClass(\'${1:className}\')$0'
end

snippet 'height' do |s|
  s.trigger = '.height'
  s.scope = 'source.js'
  s.expansion = '.height(${1:integer})$0'
end

snippet 'hide (with callback)' do |s|
  s.trigger = '.hide'
  s.scope = 'source.js'
  s.expansion = '.hide(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/}, function() {
	${0://Stuff to do *after* the animation takes place};
});
'
end

snippet 'hide' do |s|
  s.trigger = '.hide'
  s.scope = 'source.js'
  s.expansion = '.hide(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/})$0'
end

snippet 'hover' do |s|
  s.trigger = '.hover'
  s.scope = 'source.js'
  s.expansion = '.hover(function() {
	${1:// Stuff to do when the mouse enters the element;}
}, function() {
	${2:// Stuff to do when the mouse leaves the element;}
});$0'
end

snippet 'html' do |s|
  s.trigger = '.html'
  s.scope = 'source.js'
  s.expansion = '.html(${1/(.+)/(?1:\':)/}${1:Some text <b>and bold!</b>}${1/(.+)/(?1:\':)/})$0'
end

snippet 'index' do |s|
  s.trigger = '.index'
  s.scope = 'source.js'
  s.expansion = '.index(${1/(.+)/(?1:\':)/}${1:selector/element}${1/(.+)/(?1:\':)/})$0'
end

snippet 'innerHeight' do |s|
  s.trigger = '.innerHeight'
  s.scope = 'source.js'
  s.expansion = '.innerHeight()$0'
end

snippet 'innerWidth' do |s|
  s.trigger = '.innerWidth'
  s.scope = 'source.js'
  s.expansion = '.innerWidth()$0'
end

snippet 'insertAfter' do |s|
  s.trigger = '.insertAfter'
  s.scope = 'source.js'
  s.expansion = '.insertAfter(\'${1:selector expression}\')$0'
end

snippet 'insertBefore' do |s|
  s.trigger = '.insertBefore'
  s.scope = 'source.js'
  s.expansion = '.insertBefore(\'${1:selector expression}\')$0'
end

snippet 'is' do |s|
  s.trigger = '.is'
  s.scope = 'source.js'
  s.expansion = '.is(\'${1:selector expression}\')$0'
end

snippet 'keydown' do |s|
  s.trigger = '.keydown'
  s.scope = 'source.js'
  s.expansion = '.keydown(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'keypress' do |s|
  s.trigger = '.keypress'
  s.scope = 'source.js'
  s.expansion = '.keypress(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'keyup' do |s|
  s.trigger = '.keyup'
  s.scope = 'source.js'
  s.expansion = '.keyup(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'last' do |s|
  s.trigger = '.last'
  s.scope = 'source.js'
  s.expansion = '.last()$0'
end

snippet 'live' do |s|
  s.trigger = '.live'
  s.scope = 'source.js'
  s.expansion = '.live(\'${1:event type(s)}\', function(${2:event}) {
	${0:// Act on the event}
});'
end

snippet 'load (AHAH)' do |s|
  s.trigger = '.load'
  s.scope = 'source.js'
  s.expansion = '.load(\'${1:/path/to/file}\'${2/(.+)/(?1:,{
 :)/}${2:param1: "value1", param2: "value2"}${2/(.+)/(?1:}:)/}${3/(.+)/(?1:,
 function\(\){
    :)/}${3:// Stuff to do after the page is loaded}${3/(.+)/(?1:
}:)/});
$0'
end

snippet 'load' do |s|
  s.trigger = '.load'
  s.scope = 'source.js'
  s.expansion = '.load(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'map (function)' do |s|
  s.trigger = '.map'
  s.scope = 'source.js'
  s.expansion = '.map(function(index, elem) {
  ${1:return ${2:something};}
})'
end

snippet 'mousedown' do |s|
  s.trigger = '.mousedown'
  s.scope = 'source.js'
  s.expansion = '.mousedown(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'mouseenter' do |s|
  s.trigger = '.mouseenter'
  s.scope = 'source.js'
  s.expansion = '.mouseenter(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'mouseleave' do |s|
  s.trigger = '.mouseleave'
  s.scope = 'source.js'
  s.expansion = '.mouseleave(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'mousemove' do |s|
  s.trigger = '.mousemove'
  s.scope = 'source.js'
  s.expansion = '.mousemove(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'mouseout' do |s|
  s.trigger = '.mouseout'
  s.scope = 'source.js'
  s.expansion = '.mouseout(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'mouseover' do |s|
  s.trigger = '.mouseover'
  s.scope = 'source.js'
  s.expansion = '.mouseover(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'mouseup' do |s|
  s.trigger = '.mouseup'
  s.scope = 'source.js'
  s.expansion = '.mouseup(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'next' do |s|
  s.trigger = '.next'
  s.scope = 'source.js'
  s.expansion = '.next(${1/(.+)/(?1:\':)/}${1:selector}${1/(.+)/(?1:\':)/})$0'
end

snippet 'nextAll' do |s|
  s.trigger = '.nextAll'
  s.scope = 'source.js'
  s.expansion = '.nextAll(${1/(.+)/(?1:\':)/}${1:selector}${1/(.+)/(?1:\':)/})$0'
end

snippet 'nextUntil' do |s|
  s.trigger = '.nextUntil'
  s.scope = 'source.js'
  s.expansion = '.nextUntil(${1/(.+)/(?1:\':)/}${1:selector}${1/(.+)/(?1:\':)/})$0'
end

snippet 'not' do |s|
  s.trigger = '.not'
  s.scope = 'source.js'
  s.expansion = '.not(\'${1:selector expression}\')$0'
end

snippet 'offset (function)' do |s|
  s.trigger = '.offset'
  s.scope = 'source.js'
  s.expansion = '.offset(function(index, currentCoordinates) {
  ${1:return ${2:someObject};}
})'
end

snippet 'offset' do |s|
  s.trigger = '.offset'
  s.scope = 'source.js'
  s.expansion = '.offset(${1/(.+)/(?1:{:)/}${1:coordinates}${1/(.+)/(?1:}:)/})$0'
end

snippet 'offsetParent' do |s|
  s.trigger = '.offsetParent'
  s.scope = 'source.js'
  s.expansion = '.offsetParent()$0'
end

snippet 'one' do |s|
  s.trigger = '.one'
  s.scope = 'source.js'
  s.expansion = '.one(\'${1:event name}\', function(${2:event}) {
	${0:// Act on the event once}
});'
end

snippet 'outerHeight' do |s|
  s.trigger = '.outerHeight'
  s.scope = 'source.js'
  s.expansion = '.outerHeight()$0'
end

snippet 'outerWidth' do |s|
  s.trigger = '.outerWidth'
  s.scope = 'source.js'
  s.expansion = '.outerWidth()$0'
end

snippet 'parent' do |s|
  s.trigger = '.parent'
  s.scope = 'source.js'
  s.expansion = '.parent(${1/(.+)/(?1:\':)/}${1:selector expression}${1/(.+)/(?1:\':)/})$0'
end

snippet 'parents' do |s|
  s.trigger = '.parents'
  s.scope = 'source.js'
  s.expansion = '.parents(${1/(.+)/(?1:\':)/}${1:selector expression}${1/(.+)/(?1:\':)/})$0'
end

snippet 'parentsUntil' do |s|
  s.trigger = '.parentsUntil'
  s.scope = 'source.js'
  s.expansion = '.parentsUntil(${1/(.+)/(?1:\':)/}${1:selector}${1/(.+)/(?1:\':)/})$0'
end

snippet 'plugin (animation)' do |s|
  s.trigger = 'plugin'
  s.scope = 'source.js'
  s.expansion = 'jQuery.fn.${1:myeffect} = function(speed, easing, callback) {
  return this.animate({${2:param1}: ${3:\'value\'}}, speed, easing, callback);
};'
end

snippet 'plugin (selector)' do |s|
  s.trigger = 'plugin'
  s.scope = 'source.js'
  s.expansion = '(function(\$) {
  \$.extend(\$.expr[\':\'], {
    ${1:selectorName}: function(element, index, matches, set) {
      $0
      return something;
    }
  });
})(jQuery);
'
end

snippet 'plugin (method)' do |s|
  s.trigger = 'plugin'
  s.scope = 'source.js'
  s.expansion = ';(function(\$) {
${2:// ${3:What does the $1 plugin do?}}
\$.fn.${1:pluginName} = function(options) {
  var opts = \$.extend({}, \$.fn.$1.defaults, options);

  return this.each(function() {
    var \$this = \$(this);

  ${5:  ${6:// Support for the Metadata Plugin.}
    var o = \$.meta ? \$.extend({\}, opts, \$this.data()) : opts;
  }

  });

  // private function for debugging
  function debug(\$obj) {
    if (window.console && window.console.log) {
      window.console.log(\$obj);
    }
  }
};

// default options
\$.fn.$1.defaults = {
  ${4:defaultOne:true,
  defaultTwo:false,
  defaultThree:\'yay!\'}
};

})(jQuery);
'
end

snippet 'prepend' do |s|
  s.trigger = '.prepend'
  s.scope = 'source.js'
  s.expansion = '.prepend(\'${1:Some text <b>and bold!</b>}\')$0'
end

snippet 'prependTo' do |s|
  s.trigger = '.prependTo'
  s.scope = 'source.js'
  s.expansion = '.prependTo(\'${1:selector expression}\')$0'
end

snippet 'prev' do |s|
  s.trigger = '.prev'
  s.scope = 'source.js'
  s.expansion = '.prev(${1/(.+)/(?1:\':)/}${1:selector expression}${1/(.+)/(?1:\':)/})$0'
end

snippet 'prevAll' do |s|
  s.trigger = '.prevAll'
  s.scope = 'source.js'
  s.expansion = '.prevAll(${1/(.+)/(?1:\':)/}${1:selector}${1/(.+)/(?1:\':)/})$0'
end

snippet 'prevUntil' do |s|
  s.trigger = '.prevUntil'
  s.scope = 'source.js'
  s.expansion = '.prevUntil(${1/(.+)/(?1:\':)/}${1:selector}${1/(.+)/(?1:\':)/})$0'
end

snippet 'remove' do |s|
  s.trigger = '.remove'
  s.scope = 'source.js'
  s.expansion = '.remove()$0'
end

snippet 'removeAttr' do |s|
  s.trigger = '.removeAttr'
  s.scope = 'source.js'
  s.expansion = '.removeAttr(\'${1:attribute name}\')$0'
end

snippet 'removeClass' do |s|
  s.trigger = '.removeClass'
  s.scope = 'source.js'
  s.expansion = '.removeClass(\'${1:class name}\')$0'
end

snippet 'removeData' do |s|
  s.trigger = '.removeData'
  s.scope = 'source.js'
  s.expansion = '.removeData(\'${1:data name}\')$0'
end

snippet 'replaceAll' do |s|
  s.trigger = '.replaceAll'
  s.scope = 'source.js'
  s.expansion = '.replaceAll(\'${1:data name}\')$0'
end

snippet 'replaceWith (function)' do |s|
  s.trigger = '. replaceWith'
  s.scope = 'source.js'
  s.expansion = '.replaceWith(function(index, currentContents) {
  ${1:return ${2:something};}
})'
end

snippet 'replaceWith' do |s|
  s.trigger = '.replaceWith'
  s.scope = 'source.js'
  s.expansion = '.replaceWith(\'${1:htmlString/DOMElement/jQueryObject}\')$0'
end

snippet 'reset' do |s|
  s.trigger = '.reset'
  s.scope = 'source.js'
  s.expansion = '.reset(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'resize' do |s|
  s.trigger = '.resize'
  s.scope = 'source.js'
  s.expansion = '.resize(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'scroll' do |s|
  s.trigger = '.scroll'
  s.scope = 'source.js'
  s.expansion = '.scroll(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'scrollLeft' do |s|
  s.trigger = '.scrollLeft'
  s.scope = 'source.js'
  s.expansion = '.scrollLeft(${1:value})$0'
end

snippet 'scrollTop' do |s|
  s.trigger = '.scrollTop'
  s.scope = 'source.js'
  s.expansion = '.scrollTop(${1:value})$0'
end

snippet 'select' do |s|
  s.trigger = '.select'
  s.scope = 'source.js'
  s.expansion = '.select(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'serialize' do |s|
  s.trigger = '.serialize'
  s.scope = 'source.js'
  s.expansion = '.serialize()$0'
end

snippet 'serializeArray' do |s|
  s.trigger = '.serializeArray'
  s.scope = 'source.js'
  s.expansion = '.serializeArray()$0'
end

snippet 'show (with callback)' do |s|
  s.trigger = '.show'
  s.scope = 'source.js'
  s.expansion = '.show(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/}, function() {
	${0://Stuff to do *after* the animation takes place};
});
'
end

snippet 'show' do |s|
  s.trigger = '.show'
  s.scope = 'source.js'
  s.expansion = '.show(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/})$0'
end

snippet 'siblings' do |s|
  s.trigger = '.siblings'
  s.scope = 'source.js'
  s.expansion = '.siblings(${1/(.+)/(?1:\':)/}${1:selector expression}${1/(.+)/(?1:\':)/})$0'
end

snippet 'size' do |s|
  s.trigger = '.size'
  s.scope = 'source.js'
  s.expansion = '.size()$0'
end

snippet 'slice' do |s|
  s.trigger = '.slice'
  s.scope = 'source.js'
  s.expansion = '.slice(${1:start}${2/^([^,]|\d).*$|.+/(?1:, :)/}${2:end})$0'
end

snippet 'slideDown (with callback)' do |s|
  s.trigger = '.slideDown'
  s.scope = 'source.js'
  s.expansion = '.slideDown(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/}, function() {
	${0://Stuff to do *after* the animation takes place};
});
'
end

snippet 'slideDown' do |s|
  s.trigger = '.slideDown'
  s.scope = 'source.js'
  s.expansion = '.slideDown(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/})$0'
end

snippet 'slideToggle' do |s|
  s.trigger = '.slideToggle'
  s.scope = 'source.js'
  s.expansion = '.slideToggle(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/})$0'
end

snippet 'slideUp (with callback)' do |s|
  s.trigger = '.slideUp'
  s.scope = 'source.js'
  s.expansion = '.slideUp(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/}, function() {
	${0://Stuff to do *after* the animation takes place};
});
'
end

snippet 'slideUp' do |s|
  s.trigger = '.slideUp'
  s.scope = 'source.js'
  s.expansion = '.slideUp(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/})$0'
end

snippet 'stop' do |s|
  s.trigger = '.stop'
  s.scope = 'source.js'
  s.expansion = '.stop(${1:clearQueue}${2/^([^,]|\w).*$|.+/(?1:, :)/}${2:gotoEnd})$0'
end

snippet 'submit' do |s|
  s.trigger = '.submit'
  s.scope = 'source.js'
  s.expansion = '.submit(${1:function() {
	${0:// Act on the event}
\}});'
end

snippet 'text' do |s|
  s.trigger = '.text'
  s.scope = 'source.js'
  s.expansion = '.text(${1:\'some text\'})$0'
end

snippet 'toArray' do |s|
  s.trigger = '.toArray'
  s.scope = 'source.js'
  s.expansion = '.toArray()$0'
end

snippet 'toggle (event)' do |s|
  s.trigger = '.toggle'
  s.scope = 'source.js'
  s.expansion = '.toggle(function() {
	${1:// Stuff to do every *odd* time the element is clicked;}
}, function() {
	${2:// Stuff to do every *even* time the element is clicked;}
});
$0'
end

snippet 'toggle (show/hide)' do |s|
  s.trigger = '.toggle'
  s.scope = 'source.js'
  s.expansion = '.toggle(${1/(^[0-9]+$)|.+/(?1::\')/}${1:slow/400/fast}${1/(^[0-9]+$)|.+/(?1::\')/})$0'
end

snippet 'toggleClass' do |s|
  s.trigger = '.toggleClass'
  s.scope = 'source.js'
  s.expansion = '.toggleClass(\'${1:class name}\')$0'
end

snippet 'trigger' do |s|
  s.trigger = '.trigger'
  s.scope = 'source.js'
  s.expansion = '.trigger(\'${1:event name}\')$0'
end

snippet 'triggerHandler' do |s|
  s.trigger = '.trigger'
  s.scope = 'source.js'
  s.expansion = '.triggerHandler(\'${1:event name}\')$0'
end

snippet 'unbind' do |s|
  s.trigger = '.unbind'
  s.scope = 'source.js'
  s.expansion = '.unbind(\'${1:event name(s)}\'${2/(^,).*|.+/(?1::, )/}${2/(^([0-9]+$|,.*))|.+/(?1::\')/}${2:functionName}${2/(^([0-9]+$|,.*))|.+/(?1::\')/})$0'
end

snippet 'undelegate' do |s|
  s.trigger = '.undelegate'
  s.scope = 'source.js'
  s.expansion = '.undelegate(\'${1:selector}\', \'${2:event type}\', \'${3:function}\');'
end

snippet 'unwrap' do |s|
  s.trigger = '.unwrap'
  s.scope = 'source.js'
  s.expansion = '.unwrap()$0'
end

snippet 'val' do |s|
  s.trigger = '.val'
  s.scope = 'source.js'
  s.expansion = '.val(${1/(.+)/(?1:\':)/}${1:text}${1/(.+)/(?1:\':)/})$0'
end

snippet 'width' do |s|
  s.trigger = '.width'
  s.scope = 'source.js'
  s.expansion = '.width(${1:integer})$0'
end

snippet 'wrap' do |s|
  s.trigger = '.wrap'
  s.scope = 'source.js'
  s.expansion = '.wrap(\'${1:<div class="extra-wrapper"></div>}\')$0'
end

snippet 'wrapAll' do |s|
  s.trigger = '.wrap'
  s.scope = 'source.js'
  s.expansion = '.wrapAll(\'${1:<div class="extra-wrapper"></div>}\')$0'
end

snippet 'wrapInner' do |s|
  s.trigger = '.wrap'
  s.scope = 'source.js'
  s.expansion = '.wrapInner(\'${1:<div class="extra-wrapper"></div>}\')$0'
end

