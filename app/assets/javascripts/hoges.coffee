$ ->
  viewModel = ->
    self = this
    self.message = ko.observable("test")
    return

  ko.applyBindings new viewModel()
  return