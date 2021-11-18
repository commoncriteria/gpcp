python3 transforms/py/retrieve-included-docs.py input/gpcp.xml output && python3 transforms/py/post-process.py <(xsltproc --stringparam debug 'v' --stringparam appendicize on --stringparam release final transforms/xsl/pp2html.xsl input/gpcp.xml)\=output/gpcp-release.html 
Downloading https://raw.githubusercontent.com/commoncriteria/tls/v1.1/input/tls.xml to output/pkg-tls.xml
Downloading https://raw.githubusercontent.com/commoncriteria/ssh/v1.0-fp/input/ssh.xml to output/pkg-ssh.xml
Can't really find it
Target does not have text field: obj
Can't really find it
Target does not have text field: req
Can't really find it
Target does not have text field: req
Can't really find it
Target does not have text field: req
python3 transforms/py/anchorize-periods.py output/gpcp-release.html output/gpcp-release-linkable.html || true
