$ ->
  # =============================
  # HTML
  # =============================
  htmlViewModel = ->
    self = this
    self.message = ko.observable("")
    self.messageHtml = ko.computed((->
      "<em>" + self.message() + "</em>"
    ), self)
    return

  # =============================
  # TEXT
  # =============================
  textViewModel = ->
    self = this
    self.message = ko.observable("")
    return

  # =============================
  # VISIBLE
  # =============================
  visibleViewModel = ->
    self = this
    self.isTrue = true
    self.isFalse = false
    return

  # =============================
  # CSS
  # =============================
  cssViewModel = ->
    self = this
    self.isError = true
    return

  # =============================
  # ATTR
  # =============================
  attrViewModel = ->
    self = this
    self.hrefAttr = ko.observable(
      href: 'http://www.google.co.jp'
      title: 'Google'
    )
    return

  # =============================
  # Foreach
  # =============================
  foreachViewModel = ->
    self = this
    self.items = ko.observableArray([
      'hoge'
      'fuga'
      'piyo'
    ])

    self.addItem = ->
      self.items.push('add')
    self.removeItem = ->
      self.items.pop()
    return

  # =============================
  # Checkbox
  # =============================
  checkboxViewModel = ->
    self = this
    self.items = ko.observableArray([
      'hoge'
      'piyo'
    ])
    return

  # =============================
  # Select
  # =============================
  selectViewModel = ->
    self = this
    self.items = ko.observableArray([{
      id: 11
      name: 'HOGE'
    }, {
      id: 22
      name: 'FUGA'
    }, {
      id: 33
      name: 'PIYO'
    }])

    self.toId = (item) ->
      "id_" + item.id

    self.toLabel =  (item) ->
      "label_" + item.name
    return

  # =============================
  # Template
  # =============================
  templateViewModel = ->
    self = this
    self.templateModel = ko.observable({ message: 'Hello Template!!' })
    return

  # =============================
  # CustomBinding
  # =============================
  ko.bindingHandlers.myBinding = init: (element, valueAccessor, allBindings) ->
    param = valueAccessor()
    element.innerText = 'Custom Binding param = ' + param

  ko.applyBindings
    html: new htmlViewModel()
    text: new textViewModel()
    visible: new visibleViewModel()
    css: new cssViewModel()
    attr: new attrViewModel()
    foreach: new foreachViewModel()
    checkbox: new checkboxViewModel()
    select: new selectViewModel()
    template: new templateViewModel()
  return