module.exports =
  prefix: "/resources"
  static:
    "/editor":
      scopes: [ "admin" ]
      path: "#{__dirname}/../static/editor"
  typeMapping:
    formToResource:
      "text": "String"
      "email": "String"
      "number": "Number"
      "password": "String"
      "textarea": "Text"
      "checkbox": "Boolean"
      "checkboxlist": "String"
      "radiobuttonlist": "String"
      "selectlist": "String"
    resourceToForm:
      "String": "text"
      "Text": "textarea"
      "Json": "textarea"
      "Number": "number"
      "Float": "number"
      "Double": "number"
      "Integer": "number"
      "Date": "number"
      "Boolean": "checkbox"
