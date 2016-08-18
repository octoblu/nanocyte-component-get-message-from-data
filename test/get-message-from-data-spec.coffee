ReturnValue = require 'nanocyte-component-return-value'
GetMessageFromData = require '..'

describe 'GetMessageFromData', ->
  beforeEach ->
    @sut = new GetMessageFromData

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message from data using the transactionId', ->
        result = @sut.onEnvelope({data: {'yo-transaction-id': {foo: 'bar'}}, message: {transactionId: 'yo-transaction-id'}})
        expect(result).to.deep.equal foo: 'bar'
