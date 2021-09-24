import Apodini
import Foundation


struct SensorData: Handler {
    static let dirPath = "data"

    func handle() -> [SensorDump] {
        readJSONDirectory(SensorDump.self, dirPath: Self.dirPath)
    }

    var content: some Component {
        Group(String(TDSSensor.sensorType)) {
            TDSSensor()
        }
    }
}
