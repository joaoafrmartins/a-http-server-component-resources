{ resolve } = require 'path'

{ titleize } = require 'inflection'

Component = require 'a-http-server-component'

module.exports = class Resources extends Component

  config: "#{__dirname}/config"

  convertResourceToSchema: (entity, schema) ->

    ###

    config = @server.config.components

      .resources.typeMapping.resourceToForm

    form = name: titleize entity.replace "-", " "

    ###

    console.log @config

  "/schema/:resource":

    method: "get"

    params: []

    scopes: []

    route: (req, res, next) ->

      resource = @api.resources[req.params.resource]

      if typeof resource is "undefined"

        error = new @error.InvalidResourceError()

        res.setHeader 'Content-Type', 'application/json'

        res.end JSON.stringify error.toJSON(), null, 2

      else

        res.setHeader 'Content-Type', 'application/json'

        res.end JSON.stringify

          "entity" : resource.entity

          "schema": resource.definition.database.model.schema
