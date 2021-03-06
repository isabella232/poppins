let StoredServiceKey = "PoppinsStoredServiceKey"

private let UnconfiguredServiceName = "Unconfigured"
private let DropboxServiceName = "Dropbox"

enum Service: Printable {
    case Unconfigured
    case Dropbox

    var description: String {
        switch self {
        case .Unconfigured: return UnconfiguredServiceName
        case .Dropbox: return DropboxServiceName
        }
    }

    init?(string: String?) {
        switch string {
        case .Some(UnconfiguredServiceName): self = .Unconfigured
        case .Some(DropboxServiceName): self = .Dropbox
        default: return nil
        }
    }
}
