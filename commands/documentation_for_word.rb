require 'ruble'

command t(:docs_for_selection) do |cmd|
  #cmd.key_binding = 'M4+H'
  cmd.scope = 'source.js'
  cmd.output = :show_as_html
  cmd.input = :selection, :word
  cmd.invoke do
    require 'rexml/document'
    require 'tempfile'
    include REXML
    file = File.open(File.join(ENV['TM_BUNDLE_SUPPORT'], 'jquery-docs-xml-142.xml'))
    
    doc = Document.new(file)
    root = doc.root
    
    sel_text = ENV['TM_SELECTED_TEXT']
    if sel_text.nil?
      cur_line = ENV['TM_CURRENT_LINE']
      cur_word = ENV['TM_CURRENT_WORD']
      matcher = cur_line.match(/(jQuery|\$)(\.#{cur_word})/)
      lookup_word = matcher ? 'jQuery' + matcher[2] : cur_word
    else
      lookup_word = sel_text
    end
    lookup_word = lookup_word.sub('$','jQuery')
    
    entries = ''
    root.elements.each("//entry[@name='#{lookup_word}']") { |e| entries += e.to_s }
    
    stylefile = File.join(ENV['TM_BUNDLE_SUPPORT'], 'docs-142.xsl')
    
    tf = Tempfile.new('docs')
    tf.puts('<?xml version="1.0" encoding="UTF-8"?>' + "\n")
    tf.puts('<docs>' + "\n")
    tf.puts entries
    tf.puts('</docs>' + "\n")
    tf.close
    xmlfile = tf.path
    # FIXME This definitely won't fly on Windows!
    output = `xsltproc "#{stylefile}" "#{xmlfile}"`
    
    if output.length < 100
      url = "https://developer.mozilla.org/en?search=title:" + lookup_word
      "<meta http-equiv='Refresh' content='0;URL=#{url}'>"
    else
      output
    end
  end
end
