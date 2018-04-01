<div id="sample">
  <script type="text/javascript" src="..\..\assets\js\nicEdit-latest.js"></script> <script type="text/javascript">
//<![CDATA[
  bkLib.onDomLoaded(function() {
        new nicEditor().panelInstance('area1');
        new nicEditor({fullPanel : true}).panelInstance('area2');
        new nicEditor({iconsPath : '../nicEditorIcons.gif'}).panelInstance('area3');
        new nicEditor({buttonList : ['fontSize','bold','italic','underline','strikeThrough','subscript','superscript','html','image']}).panelInstance('area4');
        new nicEditor({maxHeight : 100}).panelInstance('area5');
  });
  //]]>
  </script>
  <h4>
    Default (No Config Specified)
  </h4>
  <p>
    new nicEditor().panelInstance('area1');
  </p>
  <textarea cols="50" id="area1">
</textarea>
  <h4>
    All Available Buttons {fullPanel : true}
  </h4>
  <p>
    new nicEditor({fullPanel : true}).panelInstance('area2');
  </p>
  <textarea cols="100" id="area2">
Some Initial Content was in this textarea
</textarea>
  <h4>
    Change Path to Icon File {iconsPath : 'path/to/nicEditorIcons.gif'}
  </h4>
  <p>
    new nicEditor({iconsPath : 'nicEditorIcons.gif'}).panelInstance('area3');
  </p>
  <textarea cols="50" id="area3">
</textarea>
  <h4>
    Customize the Panel Buttons/Select List
  </h4>
  <p>
    {buttonList : ['fontSize','bold','italic','underline','strikeThrough','subscript','superscript']}
  </p>
  <textarea cols="50" id="area4">
HTML content default in textarea
</textarea>
  <h4>
    Set a maximum expansion size (maxHeight)
  </h4>
  <p>
    {maxHeight : 100}
  </p>
  <textarea style="height: 100px;" cols="50" id="area5">
HTML content default in textarea
</textarea>
</div>