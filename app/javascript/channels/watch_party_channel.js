import consumer from "./consumer";

const initWatchPartyCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.watchpartyId;

    consumer.subscriptions.create({ channel: "WatchPartyChannel", id: id }, {
      received(data) {
    messagesContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}


export { initWatchPartyCable };
