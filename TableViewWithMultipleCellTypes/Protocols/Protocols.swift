import Foundation
import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    static var nib:UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
}
