A master stylesheet starting point based on the discussion in [XSLT and HTML5][1] and what might be thought of as current best practices for handling non-JavaScript browsers and Internet Explorer CSS rendering bugs.

It is intended for use in conjunction with the *html5_doctype* Symphony extension and the *Modernizr* JavaScript library.

A comprehensive range of Internet Explorer version-specific classes is available on the html tag for CSS styling without loading of separate CSS files.

## Necessary steps

### html5_doctype Symphony extension

Install and enable the [html5_doctype Symphony extension][2], which replaces the XHTML output in the first few lines of your document with HTML5 equivalents.

Then change the number near the end of line 40 of the extension's extension.driver.php file to (at least) 11:

    $html_array = explode("\n", $html, 11);

This allows additional lines at the top of your document to be searched and changed, which is necessary for this stylesheet as it contains extra html tags for Internet Explorer wrapped in IE conditional comments. If you edit this stylesheet and include extra lines near the top, you may need to further increase this number.

### Modernizr

Download your [modernizr.js][3] file and place it into workspace/scripts

Modernizr changes the "no-js" class of the html tag to "js" if the visiting browser is using JavaScript, allowing you to write CSS specific to visitors with and without JavaScript.

It also makes Internet Explorer render and style the new HTML5 elements.

  [1]: /discuss/thread/43003/
  [2]: https://github.com/domain7/html5_doctype
  [3]: http://www.modernizr.com/
