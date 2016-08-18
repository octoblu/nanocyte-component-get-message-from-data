_ = require 'lodash'
ReturnValue = require 'nanocyte-component-return-value'

class GetMessageFromData extends ReturnValue
  onEnvelope: ({data, message}) =>
    data = {} unless _.isObject data
    transactionId = message.transactionId ? message.payload.transactionId
    return data[transactionId]

module.exports = GetMessageFromData
