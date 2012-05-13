# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
    browser = 'none'
    platform = 'none'

    $('.instructions').hide()

    $('.browsers button').click ->
        browser = $(@).attr 'id'
        $('.browsers button').removeClass 'active'
        $(@).addClass 'active'
        showInstructionFor browser, platform

    $('.platforms button').click ->
        platform = $(@).attr 'id'
        $('.platforms button').removeClass 'active'
        $(@).addClass 'active'
        showInstructionFor browser, platform

    showInstructionFor = (browser, platform) ->
        if browser == 'none' or platform == 'none'
            return
        $('.instructions').hide()
        instructionDiv = $(".#{browser}.#{platform}")
        if instructionDiv.length > 0
            instructionDiv.show()
        else
            $('.instructions.unknown').show()

