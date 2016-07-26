import UIKit

protocol Identifiable {
    static var identifier: String { get }
}

extension Identifiable {
    static var identifier: String {
        get {
            return String(self)
        }
    }
}

extension UITableViewCell: Identifiable {

}

extension UICollectionViewCell: Identifiable {

}

extension UITableView {
    func register(_ cellClass: UITableViewCell.Type) {
        self.registerClass(cellClass.self, forCellReuseIdentifier: cellClass.identifier)
    }
}

extension UICollectionView {
    func register(_ cellClass: UICollectionViewCell.Type) {
        self.registerClass(cellClass.self, forCellWithReuseIdentifier: cellClass.identifier)
    }
}
