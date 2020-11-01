import channels.layers
from asgiref.sync import async_to_sync

channel_layer = channels.layers.get_channel_layer()
async_to_sync(channel_layer.send)('test_channel', {'type': 'hello'})
print(async_to_sync(channel_layer.receive)('test_channel'))
