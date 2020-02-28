texlive.js 
==========

This is a port of TeX live 2016 to Javascript. 
It creates PDF files from LaTeX code and supports packages.

## Usage
This library supports both pdfTeX and bibTeX. However, the implementation of both differs slightly due to the nature of how you compile both.

To compile a file that does not have references (ie just `pdftex input.tex`), the code is as follows

```TYPESCRIPT
let texlive = new TeXLive();
texlive.pdftex.compile(latex_source).then((pdf) => {
    // pdf is a base64 encoded string you can use
});
```
