import UIKit

class EmptyView: UIView {

    private lazy var emptyLabel: UILabel = {
        let label = UILabel()
        label.text = "No data found"
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        label.textAlignment = .center
        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(emptyLabel)

        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            emptyLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            emptyLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
