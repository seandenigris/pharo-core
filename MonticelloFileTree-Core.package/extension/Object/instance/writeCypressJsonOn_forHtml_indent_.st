writeCypressJsonOn: aStream forHtml: forHtml indent: startIndent
    "by default ignore <forHtml> ... <forHtml> is used for Dictionary and Array, i.e., container objects and String which actually encodes itself differently for HTML"

    self error:  'Cypress should not arrive here'