_ = require 'lodash'
ReturnValue = require 'nanocyte-component-return-value'

class GetMessageFromData extends ReturnValue
  onEnvelope: ({data, message}) =>
    data = {} unless _.isObject data
    return data[message.transactionId]

module.exports = GetMessageFromData
