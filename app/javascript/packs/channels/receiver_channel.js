import consumer from 'rails_com/cable'

consumer.subscriptions.create('ReceiverChannel', {
  collection() {
    return $("[data-channel='notices']")
  },
  received(data) {
    this.collection().css('color', '#ff7f24')
    this.collection().html(data.body)
    Messenger().post({
      message: data.body,
      type: 'info',
      showCloseButton: true
    })
    $('#notify_show').css('color', '#ff7f24')
    $('#notice_count').html(data.count)
  },
  connected: function() {
    console.log('connected success')
  }
})
